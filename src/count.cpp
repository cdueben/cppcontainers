// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <vector>
#include <cstddef>

// template <typename T>
// Rcpp::IntegerVector count(Rcpp::XPtr<T> x, SEXP& v) {
//   std::size_t v_size = v.size();
//   Rcpp::IntegerVector c (v_size);
//   for(std::size_t i = 0; i != v_size; ++i) {
//     c[i] = x->count(v[i]);
//   }
//   return c;
// }

// set
// [[Rcpp::export]]
Rcpp::IntegerVector set_count_i(Rcpp::XPtr<std::set<int> > x, Rcpp::IntegerVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector set_count_d(Rcpp::XPtr<std::set<double> > x, Rcpp::NumericVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector set_count_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  const std::size_t s_size = s.size();
  Rcpp::IntegerVector c (s_size);
  for(std::size_t i = 0; i != s_size; ++i) {
    c[i] = x->count(s[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector set_count_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::LogicalVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}

// unordered_set
// [[Rcpp::export]]
Rcpp::IntegerVector unordered_set_count_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::IntegerVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector unordered_set_count_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::NumericVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector unordered_set_count_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  const std::size_t s_size = s.size();
  Rcpp::IntegerVector c (s_size);
  for(std::size_t i = 0; i != s_size; ++i) {
    c[i] = x->count(s[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::IntegerVector unordered_set_count_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::LogicalVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::IntegerVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->count(v[i]);
  }
  return c;
}
