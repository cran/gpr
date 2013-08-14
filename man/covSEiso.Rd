\name{covSEiso}
\alias{covSEiso}
\alias{covSEiso, array, array, integer, logic}
\title{ 
Squared Exponential covariance function with isotropic distance measure. }
\description{
This covariance function is defined as:   k(x^p,x^q) = sf2 * exp(- t(x^p - x^q)*inv(P)*(x^p - x^q)/2) ,  in which where the P matrix is ell^2 times the unit matrix and sf2 is the signal
variance. The hyperparameter vector is loghyper = [ log(ell)	  ,log(sqrt(sf2)) ]
}
\usage{
covSEiso(loghyper = NULL , x = NULL , z =  NULL , testset.covariances= FALSE)
}
\arguments{
  \item{loghyper}{\code{loghyper} is hyperparameter vector variable.}
  \item{x}{\code{x} is Input parameter array to apply the function over.}
  \item{z}{\code{z} is Index number of loghyper vector.}
  \item{testset.covariances}{\code{testset.covariances} is a logic value to decide to compute testset covariances or not.}
}
\value{
If \code{z}  is not null and \code{testset.covariances} is TRUE this function calculates test set covariances and if its FALSE  the function computes derivative matrix.
When covNoise is called without parameters is reports the minimum number of parameters other than loghyper which it can accept.
The output of this function is a list consisting variables A and B. B will include testset covariances calculation when \code{testset.covariances} is TRUE.
}
\references{
Carl Edward Rasmussen and Christopher K. I. Williams.Gaussian Processes for Machine Learning. \emph{MIT Press}, 2006. ISBN 0-262-18253-X.
Carl Edward Rasmussen & Hannes Nickisch. gpml(GAUSSIAN PROCESS REGRESSION AND CLASSIFICATION Toolbox) Matlab Library.
}
\author{Afshin Sadeghi}
\examples{
params= covSEiso()
params
}