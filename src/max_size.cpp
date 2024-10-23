// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <cstddef>

// template <typename T>
// std::size_t max_size(Rcpp::XPtr<T> x) {
//   return x->max_size();
// }

// set
// [[Rcpp::export]]
std::size_t set_max_size_i(Rcpp::XPtr<std::set<int> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t set_max_size_d(Rcpp::XPtr<std::set<double> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t set_max_size_s(Rcpp::XPtr<std::set<std::string> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t set_max_size_b(Rcpp::XPtr<std::set<bool> > x) {
  return x->max_size();
}

// unordered_set
// [[Rcpp::export]]
std::size_t unordered_set_max_size_i(Rcpp::XPtr<std::unordered_set<int> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_size_d(Rcpp::XPtr<std::unordered_set<double> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_size_s(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  return x->max_size();
}
// [[Rcpp::export]]
std::size_t unordered_set_max_size_b(Rcpp::XPtr<std::unordered_set<bool> > x) {
  return x->max_size();
}

