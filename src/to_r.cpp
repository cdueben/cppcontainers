// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <iterator>

// set
// [[Rcpp::export]]
Rcpp::IntegerVector set_to_r_i(Rcpp::XPtr<std::set<int> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const int from,
  const bool use_to, const int to) {
  if(!use_n && !use_from && !use_to) {
    return Rcpp::wrap(*x);
  }
  if(use_n) {
    const std::size_t x_size = x->size();
    if(n > x_size) {
      n = x_size;
    }
    if(reverse) {
      const auto b = x->rbegin();
      auto e = b;
      std::advance(e, n);
      Rcpp::IntegerVector rvector (b, e);
      return rvector;
    } else {
      const auto b = x->begin();
      auto e = b;
      std::advance(e, n);
      Rcpp::IntegerVector rvector (b, e);
      return rvector;
    }
  } else {
    if(use_from != use_to || from <= to) {
      // identify from and to iterators (b and e)
      std::set<int>::iterator b;
      if(use_from) {
        b = x->lower_bound(from);
        if(b == x->end()) {
          const std::string emsg = std::to_string(from) + " is larger than the maximum value in x.";
          Rcpp::stop(emsg);
        }
      } else {
        b = x->begin();
      }
      std::set<int>::iterator e;
      if(use_to) {
        e = x->upper_bound(to);
      } else {
        e = x->end();
      }
      Rcpp::IntegerVector rvector (b, e);
      return rvector;
    } else {
      Rcpp::stop("from must be smaller than or equal to to.");
    }
  }
}
// [[Rcpp::export]]
Rcpp::NumericVector set_to_r_d(Rcpp::XPtr<std::set<double> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const double from,
  const bool use_to, const double to) {
  if(!use_n && !use_from && !use_to) {
    return Rcpp::wrap(*x);
  }
  if(use_n) {
    const std::size_t x_size = x->size();
    if(n > x_size) {
      n = x_size;
    }
    if(reverse) {
      const auto b = x->rbegin();
      auto e = b;
      std::advance(e, n);
      Rcpp::NumericVector rvector (b, e);
      return rvector;
    } else {
      const auto b = x->begin();
      auto e = b;
      std::advance(e, n);
      Rcpp::NumericVector rvector (b, e);
      return rvector;
    }
  } else {
    if(use_from != use_to || from <= to) {
      // identify from and to iterators (b and e)
      std::set<double>::iterator b;
      if(use_from) {
        b = x->lower_bound(from);
        if(b == x->end()) {
          const std::string emsg = std::to_string(from) + " is larger than the maximum value in x.";
          Rcpp::stop(emsg);
        }
      } else {
        b = x->begin();
      }
      std::set<double>::iterator e;
      if(use_to) {
        e = x->upper_bound(to);
      } else {
        e = x->end();
      }
      Rcpp::NumericVector rvector (b, e);
      return rvector;
    } else {
      Rcpp::stop("from must be smaller than or equal to to.");
    }
  }
}
// [[Rcpp::export]]
Rcpp::CharacterVector set_to_r_s(Rcpp::XPtr<std::set<std::string> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from,
  const std::string from, const bool use_to, const std::string to) {
  if(!use_n && !use_from && !use_to) {
    return Rcpp::wrap(*x);
  }
  if(use_n) {
    const std::size_t x_size = x->size();
    if(n > x_size) {
      n = x_size;
    }
    if(reverse) {
      const auto b = x->rbegin();
      auto e = b;
      std::advance(e, n);
      Rcpp::CharacterVector rvector (b, e);
      return rvector;
    } else {
      const auto b = x->begin();
      auto e = b;
      std::advance(e, n);
      Rcpp::CharacterVector rvector (b, e);
      return rvector;
    }
  } else {
    if(use_from != use_to || from <= to) {
      // identify from and to iterators (b and e)
      std::set<std::string>::iterator b;
      if(use_from) {
        b = x->lower_bound(from);
        if(b == x->end()) {
          const std::string emsg = from + " is larger than the maximum value in x.";
          Rcpp::stop(emsg);
        }
      } else {
        b = x->begin();
      }
      std::set<std::string>::iterator e;
      if(use_to) {
        e = x->upper_bound(to);
      } else {
        e = x->end();
      }
      Rcpp::CharacterVector rvector (b, e);
      return rvector;
    } else {
      Rcpp::stop("from must be smaller than or equal to to.");
    }
  }
}
// [[Rcpp::export]]
Rcpp::LogicalVector set_to_r_b(Rcpp::XPtr<std::set<bool> > x, const bool use_n, std::size_t n, const bool reverse, const bool use_from, const bool from,
  const bool use_to, const bool to) {
  if(!use_n && !use_from && !use_to) {
    return Rcpp::wrap(*x);
  }
  if(use_n) {
    const std::size_t x_size = x->size();
    if(n > x_size) {
      n = x_size;
    }
    if(reverse) {
      const auto b = x->rbegin();
      auto e = b;
      std::advance(e, n);
      Rcpp::LogicalVector rvector (b, e);
      return rvector;
    } else {
      const auto b = x->begin();
      auto e = b;
      std::advance(e, n);
      Rcpp::LogicalVector rvector (b, e);
      return rvector;
    }
  } else {
    if(use_from != use_to || from <= to) {
      // identify from and to iterators (b and e)
      std::set<bool>::iterator b;
      if(use_from) {
        b = x->lower_bound(from);
        if(b == x->end()) {
          const std::string emsg = std::to_string(from) + " is larger than the maximum value in x.";
          Rcpp::stop(emsg);
        }
      } else {
        b = x->begin();
      }
      std::set<bool>::iterator e;
      if(use_to) {
        e = x->upper_bound(to);
      } else {
        e = x->end();
      }
      Rcpp::LogicalVector rvector (b, e);
      return rvector;
    } else {
      Rcpp::stop("from must be smaller than or equal to to.");
    }
  }
}

// unordered_set
// [[Rcpp::export]]
Rcpp::IntegerVector unordered_set_to_r_i(Rcpp::XPtr<std::unordered_set<int> > x, std::size_t n) {
  if(n == 0) {
    return Rcpp::wrap(*x);
  }
  const std::size_t x_size = x->size();
  if(n > x_size) {
    n = x_size;
  }
  const auto b = x->begin();
  auto e = b;
  std::advance(e, n);
  Rcpp::IntegerVector rvector (b, e);
  return rvector;
}
// [[Rcpp::export]]
Rcpp::NumericVector unordered_set_to_r_d(Rcpp::XPtr<std::unordered_set<double> > x, std::size_t n) {
  if(n == 0) {
    return Rcpp::wrap(*x);
  }
  const std::size_t x_size = x->size();
  if(n > x_size) {
    n = x_size;
  }
  const auto b = x->begin();
  auto e = b;
  std::advance(e, n);
  Rcpp::NumericVector rvector (b, e);
  return rvector;
}
// [[Rcpp::export]]
Rcpp::CharacterVector unordered_set_to_r_s(Rcpp::XPtr<std::unordered_set<std::string> > x, std::size_t n) {
  if(n == 0) {
    return Rcpp::wrap(*x);
  }
  const std::size_t x_size = x->size();
  if(n > x_size) {
    n = x_size;
  }
  const auto b = x->begin();
  auto e = b;
  std::advance(e, n);
  Rcpp::CharacterVector rvector (b, e);
  return rvector;
}
// [[Rcpp::export]]
Rcpp::LogicalVector unordered_set_to_r_b(Rcpp::XPtr<std::unordered_set<bool> > x, std::size_t n) {
  if(n == 0) {
    return Rcpp::wrap(*x);
  }
  const std::size_t x_size = x->size();
  if(n > x_size) {
    n = x_size;
  }
  const auto b = x->begin();
  auto e = b;
  std::advance(e, n);
  Rcpp::LogicalVector rvector (b, e);
  return rvector;
}
