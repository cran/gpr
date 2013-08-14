\name{covNoise}
\alias{covNoise}
\alias{covNoise, array, array, integer, logic}
\title{ 
Independent noise function. }
\description{
Independent covariance function, ie "white noise", with specified variance.

This covariance function is parameterized as:
 k(x^p,x^q) = s2 * solve(delta(p,q)) ,  in which s2 is the noise variance and solve(delta(p,q)) is a Kronecker delta function where is 1 if p==q and its zero otherwise. 
hyperparameter and is defined by:   loghyper = [ log(sqrt(s2)) ]
}
\usage{
covNoise(loghyper= NULL ,  x = NULL , z = NULL,  testset.covariances= FALSE)
}
\arguments{
  \item{loghyper}{loghyper is hyperparameter vector variable.}
  \item{x}{Input parameter array to define the function over.}
  \item{z}{Index number of loghyper vector.}
  \item{testset.covariances}{Logic value to decide to compute testset covariances or not.}
}
\value{
If \code{z}  is not null and \code{testset.covariances} is TRUE this function calculates test set covariances and if its FALSE  the function computes derivative matrix.
When covNoise is called without parameters is reports the minimum number of parameters other than  loghyper  which it can accept.
The output of this function is a list consisting variables A and B. B will include testset covariances calculation when \code{testset.covariances} is TRUE.
}
\references{
Carl Edward Rasmussen and Christopher K. I. Williams.Gaussian Processes for Machine Learning. \emph{MIT Press}, 2006. ISBN 0-262-18253-X.
Carl Edward Rasmussen & Hannes Nickisch. gpml(GAUSSIAN PROCESS REGRESSION AND CLASSIFICATION Toolbox) Matlab Library.
}
\author{Afshin Sadeghi}
\examples{
params= covNoise()
params
}
