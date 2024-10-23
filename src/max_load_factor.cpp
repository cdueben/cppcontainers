// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <unordered_set>
#include <string>
#include <cstddef>

// unordered_set
// [[Rcpp::export]]
double unordered_set_max_load_factor_i_get(Rcpp::XPtr<std::unordered_set<int> > x) {
  return x->max_load_factor();
}
// [[Rcpp::export]]
double unordered_set_max_load_factor_d_get(Rcpp::XPtr<std::unordered_set<double> > x) {
  return x->max_load_factor();
}
// [[Rcpp::export]]
double unordered_set_max_load_factor_s_get(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  return x->max_load_factor();
}
// [[Rcpp::export]]
double unordered_set_max_load_factor_b_get(Rcpp::XPtr<std::unordered_set<bool> > x) {
  return x->max_load_factor();
}
// [[Rcpp::export]]
void unordered_set_max_load_factor_i_set(Rcpp::XPtr<std::unordered_set<int> > x, const double l) {
  x->max_load_factor(l);
}
// [[Rcpp::export]]
void unordered_set_max_load_factor_d_set(Rcpp::XPtr<std::unordered_set<double> > x, const double l) {
  x->max_load_factor(l);
}
// [[Rcpp::export]]
void unordered_set_max_load_factor_s_set(Rcpp::XPtr<std::unordered_set<std::string> > x, const double l) {
  x->max_load_factor(l);
}
// [[Rcpp::export]]
void unordered_set_max_load_factor_b_set(Rcpp::XPtr<std::unordered_set<bool> > x, const double l) {
  x->max_load_factor(l);
}





