// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <vector>

// template <typename T>
// void insert(Rcpp::XPtr<T> x, SEXP& v) {
//   x->insert(v.begin(), v.end());
// }

// set
// [[Rcpp::export]]
void set_insert_i(Rcpp::XPtr<std::set<int> > x, Rcpp::IntegerVector& v) {
  x->insert(v.begin(), v.end());
}
// [[Rcpp::export]]
void set_insert_d(Rcpp::XPtr<std::set<double> > x, Rcpp::NumericVector& v) {
  x->insert(v.begin(), v.end());
}
// [[Rcpp::export]]
void set_insert_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::CharacterVector& v) {
  x->insert(v.begin(), v.end());
}
// [[Rcpp::export]]
void set_insert_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::LogicalVector& v) {
  x->insert(v.begin(), v.end());
}

// unordered_set
// [[Rcpp::export]]
void unordered_set_insert_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::IntegerVector& v) {
  x->insert(v.begin(), v.end());
}
// [[Rcpp::export]]
void unordered_set_insert_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::NumericVector& v) {
  x->insert(v.begin(), v.end());
}
// [[Rcpp::export]]
void unordered_set_insert_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> c (v.begin(), v.end());
  x->insert(c.begin(), c.end());
}
// [[Rcpp::export]]
void unordered_set_insert_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::LogicalVector& v) {
  x->insert(v.begin(), v.end());
}
