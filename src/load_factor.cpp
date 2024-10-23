// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <unordered_set>
#include <string>
#include <cstddef>

// unordered_set
// [[Rcpp::export]]
double unordered_set_load_factor_i(Rcpp::XPtr<std::unordered_set<int> > x) {
  return x->load_factor();
}
// [[Rcpp::export]]
double unordered_set_load_factor_d(Rcpp::XPtr<std::unordered_set<double> > x) {
  return x->load_factor();
}
// [[Rcpp::export]]
double unordered_set_load_factor_s(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  return x->load_factor();
}
// [[Rcpp::export]]
double unordered_set_load_factor_b(Rcpp::XPtr<std::unordered_set<bool> > x) {
  return x->load_factor();
}






