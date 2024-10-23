// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <cstddef>

// template <typename T>
// bool empty(Rcpp::XPtr<T> x) {
//   return x->empty();
// }

// set
// [[Rcpp::export]]
bool set_empty_i(Rcpp::XPtr<std::set<int> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool set_empty_d(Rcpp::XPtr<std::set<double> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool set_empty_s(Rcpp::XPtr<std::set<std::string> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool set_empty_b(Rcpp::XPtr<std::set<bool> > x) {
  return x->empty();
}

// unordered_set
// [[Rcpp::export]]
bool unordered_set_empty_i(Rcpp::XPtr<std::unordered_set<int> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool unordered_set_empty_d(Rcpp::XPtr<std::unordered_set<double> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool unordered_set_empty_s(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  return x->empty();
}
// [[Rcpp::export]]
bool unordered_set_empty_b(Rcpp::XPtr<std::unordered_set<bool> > x) {
  return x->empty();
}

