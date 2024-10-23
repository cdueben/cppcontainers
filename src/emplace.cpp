// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <vector>
#include <string>
#include <cstddef>

// template <typename T>
// void emplace(Rcpp::XPtr<T> x) {
//   x->emplace();
// }

// set
// [[Rcpp::export]]
void set_emplace_i(Rcpp::XPtr<std::set<int> > x, int v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void set_emplace_d(Rcpp::XPtr<std::set<double> > x, double v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void set_emplace_s(Rcpp::XPtr<std::set<std::string> > x, std::string v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void set_emplace_b(Rcpp::XPtr<std::set<bool> > x, bool v) {
  x->emplace(v);
}

// unordered_set
// [[Rcpp::export]]
void unordered_set_emplace_i(Rcpp::XPtr<std::unordered_set<int> > x, int v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void unordered_set_emplace_d(Rcpp::XPtr<std::unordered_set<double> > x, double v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void unordered_set_emplace_s(Rcpp::XPtr<std::unordered_set<std::string> > x, std::string v) {
  x->emplace(v);
}
// [[Rcpp::export]]
void unordered_set_emplace_b(Rcpp::XPtr<std::unordered_set<bool> > x, bool v) {
  x->emplace(v);
}
