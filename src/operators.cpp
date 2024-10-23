// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>

// set
// [[Rcpp::export]]
bool set_equal_i(Rcpp::XPtr<std::set<int> > x, Rcpp::XPtr<std::set<int> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool set_equal_d(Rcpp::XPtr<std::set<double> > x, Rcpp::XPtr<std::set<double> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool set_equal_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::XPtr<std::set<std::string> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool set_equal_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::XPtr<std::set<bool> > y) {
  return(*x == *y);
}

// unordered_set
// [[Rcpp::export]]
bool unordered_set_equal_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::XPtr<std::unordered_set<int> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool unordered_set_equal_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::XPtr<std::unordered_set<double> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool unordered_set_equal_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::XPtr<std::unordered_set<std::string> > y) {
  return(*x == *y);
}
// [[Rcpp::export]]
bool unordered_set_equal_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::XPtr<std::unordered_set<bool> > y) {
  return(*x == *y);
}
