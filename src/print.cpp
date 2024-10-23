// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <cstddef>
#include <iostream>
#include <type_traits>

// set
template <typename T>
void set_print(Rcpp::XPtr<std::set<T> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const T from, const bool use_to,
  const T to) {
  if(use_n) {
    const std::size_t x_size = x->size();
    if(n > x_size || n == 0) {
      n = x_size;
    }
    if(reverse) {
      // print from the back
      typename std::set<T>::reverse_iterator j = x->rbegin();
      for(std::size_t i = 0; i != n; ++i) {
        Rcpp::Rcout << *j << ' ';
        if(i % 4999 == 0) {
          Rcpp::Rcout << std::flush;
        }
        ++j;
      }
    } else {
      // print from the front
      typename std::set<T>::iterator j = x->begin();
      for(std::size_t i = 0; i != n; ++i) {
        Rcpp::Rcout << *j << ' ';
        if(i % 4999 == 0) {
          Rcpp::Rcout << std::flush;
        }
        ++j;
      }
    }
  } else {
    if(use_from != use_to || from <= to) {
      // identify from and to iterators (j and k)
      typename std::set<T>::iterator j;
      if(use_from) {
        j = x->lower_bound(from);
        if(j == x->end()) {
          std::string emsg;
          if constexpr (std::is_same_v<T, std::string>) {
            emsg += from;
          } else {
            emsg += std::to_string(from);
          }
          emsg += " is larger than the maximum value in x.";
          Rcpp::stop(emsg);
        }
      } else {
        j = x->begin();
      }
      typename std::set<T>::iterator k;
      if(use_to) {
        k = x->upper_bound(to);
      } else {
        k = x->end();
      }
      // print elements
      std::size_t i = 0;
      for(auto l = j; l != k; ++l) {
        Rcpp::Rcout << *l << ' ';
        if(i % 4999 == 0) {
          Rcpp::Rcout << std::flush;
        }
        ++i;
      }
      Rcpp::Rcout << std::endl;
    } else {
      Rcpp::stop("from must be smaller than or equal to to.");
    }
  }
}
// [[Rcpp::export]]
void set_print_i(Rcpp::XPtr<std::set<int> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const int from, const bool use_to,
  const int to) {
  set_print(x, use_n, n, reverse, use_from, from, use_to, to);
}
// [[Rcpp::export]]
void set_print_d(Rcpp::XPtr<std::set<double> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const double from,
  const bool use_to, const double to) {
  set_print(x, use_n, n, reverse, use_from, from, use_to, to);
}
// [[Rcpp::export]]
void set_print_s(Rcpp::XPtr<std::set<std::string> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const std::string from,
  const bool use_to, const std::string to) {
  set_print(x, use_n, n, reverse, use_from, from, use_to, to);
}
// [[Rcpp::export]]
void set_print_b(Rcpp::XPtr<std::set<bool> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const bool from,
  const bool use_to, const bool to) {
  set_print(x, use_n, n, reverse, use_from, from, use_to, to);
}

// unordered_set
template <typename T>
void unordered_set_print(Rcpp::XPtr<std::unordered_set<T> > x, std::size_t n) {
  const std::size_t x_size = x->size();
  if(n > x_size || n == 0) {
    n = x_size;
  }
  typename std::unordered_set<T>::iterator j = x->begin();
  for(std::size_t i = 0; i != n; ++i) {
    Rcpp::Rcout << *j << ' ';
    if(i % 4999 == 0) {
      Rcpp::Rcout << std::flush;
    }
    ++j;
  }
}
// [[Rcpp::export]]
void unordered_set_print_i(Rcpp::XPtr<std::unordered_set<int> > x, std::size_t n) {
  unordered_set_print(x, n);
}
// [[Rcpp::export]]
void unordered_set_print_d(Rcpp::XPtr<std::unordered_set<double> > x, std::size_t n) {
  unordered_set_print(x, n);
}
// [[Rcpp::export]]
void unordered_set_print_s(Rcpp::XPtr<std::unordered_set<std::string> > x, std::size_t n) {
  unordered_set_print(x, n);
}
// [[Rcpp::export]]
void unordered_set_print_b(Rcpp::XPtr<std::unordered_set<bool> > x, std::size_t n) {
  unordered_set_print(x, n);
}
