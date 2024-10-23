// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <unordered_set>
#include <string>
#include <cstddef>

// unordered_set
// [[Rcpp::export]]
std::size_t unordered_set_max_bucket_count_i(Rcpp::XPtr<std::unordered_set<int> > x) {
  return x->max_bucket_count();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_bucket_count_d(Rcpp::XPtr<std::unordered_set<double> > x) {
  return x->max_bucket_count();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_bucket_count_s(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  return x->max_bucket_count();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_bucket_count_b(Rcpp::XPtr<std::unordered_set<bool> > x) {
  return x->max_bucket_count();
}
