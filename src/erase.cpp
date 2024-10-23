// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <vector>
#include <string>

// template <typename T>
// void erase(Rcpp::XPtr<T> x) {
//   x->erase();
// }

// set
// [[Rcpp::export]]
void set_erase_i(Rcpp::XPtr<std::set<int> > x, Rcpp::IntegerVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void set_erase_d(Rcpp::XPtr<std::set<double> > x, Rcpp::NumericVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void set_erase_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  for(auto i : s) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void set_erase_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::LogicalVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}

// unordered_set
// [[Rcpp::export]]
void unordered_set_erase_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::IntegerVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void unordered_set_erase_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::NumericVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void unordered_set_erase_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  for(auto i : s) {
    x->erase(i);
  }
}
// [[Rcpp::export]]
void unordered_set_erase_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::LogicalVector& v) {
  for(auto i : v) {
    x->erase(i);
  }
}
