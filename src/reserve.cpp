// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <unordered_set>
#include <string>
#include <cstddef>

// unordered_set
// [[Rcpp::export]]
void unordered_set_reserve_i(Rcpp::XPtr<std::unordered_set<int> > x, const std::size_t n) {
  x->reserve(n);
}
// [[Rcpp::export]]
void unordered_set_reserve_d(Rcpp::XPtr<std::unordered_set<double> > x, const std::size_t n) {
  x->reserve(n);
}
// [[Rcpp::export]]
void unordered_set_reserve_s(Rcpp::XPtr<std::unordered_set<std::string> > x, const std::size_t n) {
  x->reserve(n);
}
// [[Rcpp::export]]
void unordered_set_reserve_b(Rcpp::XPtr<std::unordered_set<bool> > x, const std::size_t n) {
  x->reserve(n);
}
