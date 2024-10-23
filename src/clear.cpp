// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <cstddef>

// template <typename T>
// std::size_t clear(Rcpp::XPtr<T> x) {
//   x->clear();
// }

// set
// [[Rcpp::export]]
void set_clear_i(Rcpp::XPtr<std::set<int> > x) {
  x->clear();
}
// [[Rcpp::export]]
void set_clear_d(Rcpp::XPtr<std::set<double> > x) {
  x->clear();
}
// [[Rcpp::export]]
void set_clear_s(Rcpp::XPtr<std::set<std::string> > x) {
  x->clear();
}
// [[Rcpp::export]]
void set_clear_b(Rcpp::XPtr<std::set<bool> > x) {
  x->clear();
}

// unordered_set
// [[Rcpp::export]]
void unordered_set_clear_i(Rcpp::XPtr<std::unordered_set<int> > x) {
  x->clear();
}
// [[Rcpp::export]]
void unordered_set_clear_d(Rcpp::XPtr<std::unordered_set<double> > x) {
  x->clear();
}
// [[Rcpp::export]]
void unordered_set_clear_s(Rcpp::XPtr<std::unordered_set<std::string> > x) {
  x->clear();
}
// [[Rcpp::export]]
void unordered_set_clear_b(Rcpp::XPtr<std::unordered_set<bool> > x) {
  x->clear();
}


