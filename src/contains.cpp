// [[Rcpp::plugins(cpp20)]]
#include <Rcpp.h>
#include <set>
#include <unordered_set>
#include <string>
#include <vector>
#include <cstddef>

// template <typename T>
// Rcpp::LogicalVector contains(Rcpp::XPtr<T> x, SEXP& v) {
//   std::size_t v_size = v.size();
//   Rcpp::LogicalVector c (v_size);
//   for(std::size_t i = 0; i != v_size; ++i) {
//     c[i] = x->contains(v[i]);
//   }
// }

// set
// [[Rcpp::export]]
Rcpp::LogicalVector set_contains_i(Rcpp::XPtr<std::set<int> > x, Rcpp::IntegerVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector set_contains_d(Rcpp::XPtr<std::set<double> > x, Rcpp::NumericVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector set_contains_s(Rcpp::XPtr<std::set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  const std::size_t s_size = s.size();
  Rcpp::LogicalVector c (s_size);
  for(std::size_t i = 0; i != s_size; ++i) {
    c[i] = x->contains(s[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector set_contains_b(Rcpp::XPtr<std::set<bool> > x, Rcpp::LogicalVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}

// unordered_set
// [[Rcpp::export]]
Rcpp::LogicalVector unordered_set_contains_i(Rcpp::XPtr<std::unordered_set<int> > x, Rcpp::IntegerVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector unordered_set_contains_d(Rcpp::XPtr<std::unordered_set<double> > x, Rcpp::NumericVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector unordered_set_contains_s(Rcpp::XPtr<std::unordered_set<std::string> > x, Rcpp::CharacterVector& v) {
  const std::vector<std::string> s = Rcpp::as<std::vector<std::string> >(v);
  const std::size_t s_size = s.size();
  Rcpp::LogicalVector c (s_size);
  for(std::size_t i = 0; i != s_size; ++i) {
    c[i] = x->contains(s[i]);
  }
  return c;
}
// [[Rcpp::export]]
Rcpp::LogicalVector unordered_set_contains_b(Rcpp::XPtr<std::unordered_set<bool> > x, Rcpp::LogicalVector& v) {
  const std::size_t v_size = v.size();
  Rcpp::LogicalVector c (v_size);
  for(std::size_t i = 0; i != v_size; ++i) {
    c[i] = x->contains(v[i]);
  }
  return c;
}
