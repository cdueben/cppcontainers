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
void set_show(Rcpp::XPtr<std::set<T> > p) {
  std::size_t n_print = p->size();
  if(n_print > 100) {
    n_print = 100;
    Rcpp::Rcout << "First 100 elements: ";
  }
  typename std::set<T>::iterator j = (*p).begin();
  if constexpr (std::is_same_v<T, bool>) {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << ((*j) ? "TRUE" : "FALSE") << ' ';
      ++j;
    }
  } else if constexpr (std::is_same_v<T, std::string>) {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << '"' << *j << '"' << ' ';
      ++j;
    }
  } else {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << *j << ' ';
      ++j;
    }
  }
  Rcpp::Rcout << std::endl;
}
// [[Rcpp::export]]
void set_show_i(Rcpp::XPtr<std::set<int> > p) {
  set_show(p);
}
// [[Rcpp::export]]
void set_show_d(Rcpp::XPtr<std::set<double> > p) {
  set_show(p);
}
// [[Rcpp::export]]
void set_show_s(Rcpp::XPtr<std::set<std::string> > p) {
  set_show(p);
}
// [[Rcpp::export]]
void set_show_b(Rcpp::XPtr<std::set<bool> > p) {
  set_show(p);
}

// unordered_set
template <typename T>
void unordered_set_show(Rcpp::XPtr<std::unordered_set<T> > p) {
  std::size_t n_print = p->size();
  if(n_print > 100) {
    n_print = 100;
    Rcpp::Rcout << "First 100 elements: ";
  }
  typename std::unordered_set<T>::iterator j = (*p).begin();
  if constexpr (std::is_same_v<T, bool>) {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << ((*j) ? "TRUE" : "FALSE") << ' ';
      ++j;
    }
  } else if constexpr (std::is_same_v<T, std::string>) {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << '"' << *j << '"' << ' ';
      ++j;
    }
  } else {
    for(std::size_t i = 0; i != n_print; ++i) {
      Rcpp::Rcout << *j << ' ';
      ++j;
    }
  }
  Rcpp::Rcout << std::endl;
}
// [[Rcpp::export]]
void unordered_set_show_i(Rcpp::XPtr<std::unordered_set<int> > p) {
  unordered_set_show(p);
}
// [[Rcpp::export]]
void unordered_set_show_d(Rcpp::XPtr<std::unordered_set<double> > p) {
  unordered_set_show(p);
}
// [[Rcpp::export]]
void unordered_set_show_s(Rcpp::XPtr<std::unordered_set<std::string> > p) {
  unordered_set_show(p);
}
// [[Rcpp::export]]
void unordered_set_show_b(Rcpp::XPtr<std::unordered_set<bool> > p) {
  unordered_set_show(p);
}
