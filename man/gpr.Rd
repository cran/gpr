\name{gpr}
\alias{gpr}
\alias{gpr, logtheta, covfunc.gpr, x, y}
\alias{gpr,  logtheta, covfunc.gpr, x, y, xstar , TRUE}
\title{Gaussian process regression function.}
\description{
This function delivers two applications:
1. Training  : When no test data are given, the function returns minus the log likelihood and its partial derivatives with
respect to the hyperparameters. Training method is to fit the hyperparameters.

2.Prediction: If test data are given, then marginal Gaussian predictions are computed, and function returns mean and variance describing the Gaussian predictions. In cases where the covariance
function has noise contributions, the variance returned in S2 variable is for noisy test targets. To have variance of the noise-free latent function, the noise variance should be substracted .
}
\usage{
gpr(logtheta, covfunc.gpr, x, y, xstar = NULL,  partial.derivatives = FALSE)
}

\arguments{
  \item{logtheta}{\code{logtheta} is a vector that specifies hyperparameter variable.}
  \item{covfunc.gpr}{\code{covfunc.gpr}  is a string value containing name of a covariance function to apply gpr on it.}
  \item{x}{\code{x} is Input parameter array and it is passed to \code{covfunc.gpr} function  in gpr application. Its a n by D array} 
  \item{y}{\code{y} is an other input parameter of \code{covfunc.gpr} function in gpr application. It is usually a vector that defines target value of function covfunc.gpr and the input array x and has n rows.}
  \item{xstar}{\code{xstar} is input array of test data. It has the same dimentions of \code{x}.}
\item{partial.derivatives}{Logical value that when it is TRUE and the test data is given gpr executes prediction process.}
}
\details{
There are only \code{covSum}, \code{covNoise} and \code{covSEiso} covariance functions available in this package to be used with gaussion process. More ever this is an open source script with line by line description so that you can learn the code and write your own covariance functions to call gpr on them. If you like to contribute and add your own functions to this package please contact the package maintainer. Please refere to references to get info about the other consistent covariance functions.
}
\value{
When \code{partial.derivatives } is FALSE returns a list containing minus the log likelihood and its  vector of partial derivatives .
When \code{partial.derivatives} is TRUE returns a list that consists of two objects. The first is a mean vector which same number of rows of \code{x} and \code{y} and the second object variance vector that has same number of rows of \code{x} and \code{y}. They describe the result Gaussian prediction.
} 
\references{
1. Carl Edward Rasmussen and Christopher K. I. Williams.Gaussian Processes for Machine Learning. \emph{MIT Press}, 2006. ISBN 0-262-18253-X.
2. Carl Edward Rasmussen & Hannes Nickisch. gpml(GAUSSIAN PROCESS REGRESSION AND CLASSIFICATION Toolbox) Matlab Library.
}
\author{Afshin Sadeghi}
\keyword{gpr, Gaussian process regression, Gaussian process, gp}