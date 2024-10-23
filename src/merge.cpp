// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>

// template <typename T>
// void merge(Rcpp::XPtr<T> x, Rcpp::XPtr<T> y) {
//   x->merge(*y);
// }

// set
// [[Rcpp::export]]
void set_merge_i(Rcpp::XPtr<std::set<int> > x, Rcpp::XPtr<std::set<int> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void set_merge_d(Rcpp::XPtr<std::set<double> > x, Rcpp::XPtr<std::set<double> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void set_merge_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::XPtr<std::set<std::string> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void set_merge_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::XPtr<std::set<bool> > y) {
  x->merge(*y);
}

// unordered_set
// [[Rcpp::export]]
void unordered_set_merge_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::XPtr<std::unordered_set<int> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void unordered_set_merge_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::XPtr<std::unordered_set<double> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void unordered_set_merge_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::XPtr<std::unordered_set<std::string> > y) {
  x->merge(*y);
}
// [[Rcpp::export]]
void unordered_set_merge_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::XPtr<std::unordered_set<bool> > y) {
  x->merge(*y);
}
