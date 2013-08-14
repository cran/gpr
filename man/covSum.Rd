\name{covSum}
\alias{covSum}
\alias{covSum, string, array, array, integer, logic}
\title{ 
Sum of covariance functions }
\description{
Provides sum functionality of two covariance functions . 
}
\usage{
covSum(covfuncsum , logtheta  = NULL,  x  = NULL, z = NULL, testset.covariances= FALSE)
}
\arguments{
  \item{covfuncsum}{covfuncsum is a string variable which is consist of two covariance function names seperated by a ","  .}
  \item{logtheta}{logtheta is hyperparameter vector variable.}
  \item{x}{Input parameter to define the function over}
  \item{z}{Index number of logtheta vector}
  \item{testset.covariances}{Logic value to decide to compute testset covariances or not.}
}
\value{
If \code{z}  is not null and \code{testset.covariances} is TRUE this function calculates test set covariances and if its FALSE  the function computes derivative matrix.
When covNoise is called without parameters is reports the minimum number of parameters other than  logtheta which it can accept.
The output of this function is a list consisting variables A and B. B will include testset covariances calculation when \code{testset.covariances} is TRUE.
}
\references{
Carl Edward Rasmussen and Christopher K. I. Williams.Gaussian Processes for Machine Learning. \emph{MIT Press}, 2006. ISBN 0-262-18253-X.
Carl Edward Rasmussen & Hannes Nickisch. gpml(GAUSSIAN PROCESS REGRESSION AND CLASSIFICATION Toolbox) Matlab Library.
}
\author{Afshin Sadeghi}
\examples{
params= covSum("covSEiso,covNoise")
params
}
