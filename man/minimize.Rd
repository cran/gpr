\name{minimize}
\alias{minimize}
\alias{minimize, array, string, integer, string, array, array}
\title{Minimize function for differentiable multivariate functions. }
\description{
Performs mimization on a differentiable multivariate function and returns a function value and a vector of partial
derivatives the input function.
The Polack-Ribiere flavour of conjugate gradients is used to compute search directions, and a line search using quadratic and cubic polynomial
 approximations and the Wolfe-Powell stopping criteria is used together with the slope ratio method for guessing initial step sizes. 

Details from gpml:
Please consider that minimize execution path computes a new search direction during extrapolation using conjugate gradients (Polack-Ribiere flavour), or reverts to steepest if there was a problem in the previous line-search.
Returns the best value so far, if  two consecutive line-searches fail, or whenever it run out of function evaluations or line-searches. During extrapolation, the "f" function may fail either with an error or returning Nan or Inf, 
and minimize should handle this gracefully. 
If minimize stopped  within a few iterations, it could be an indication that the function values and derivatives are not consistent (ie, there may be a bug in the implementation of your "f" function).

}
\usage{minimize(X, f, .length, covfunc, x, y)}
\arguments{
  \item{X}{Starting point is given by array \code{X} .}
  \item{f}{ \code{f} is a string value containing the function name which is supposed to apply minimize on it.}
  \item{.length}{\code{.length} defines how long minimize procedure must be executed.}
 \item{covfunc}{is string value that gives the name of covariance function which is passed on to the function \code{f}.}
\item{x}{Input parameter which is passed on to the function \code{f}.} 
\item{y}{An other input parameter like x which is passed on to the function. It usually defines target value function covfunc and the input array x. \code{f}.}
}
\value{
if .length is positive, it defines the maximum number of line searches, if negative its absolute gives the maximum allowed number of function evaluations.  .length can have a second optional component, which  indicates the
reduction in function value to be expected in the first line-search. its default value is 1.0 .

The function returns when either its length is up, or if no further progress can be made due to a (local) minimum or due to numerical problems. The function returns a list consisting of the found
solution \code{X}, a vector of function values \code{fX} indicating the progress made and \code{i} the number of iterations.
}
\references{
Carl Edward Rasmussen and Christopher K. I. Williams.\emph{Gaussian Processes for Machine Learning}. MIT Press, 2006. ISBN 0-262-18253-X.
Carl Edward Rasmussen & Hannes Nickisch. gpml(GAUSSIAN PROCESS REGRESSION AND CLASSIFICATION Toolbox) Matlab Library.
}
\author{Afshin Sadeghi}
\examples{
loghyper= array(c(-1,-1,-1), dim=c(3,1))
covfunc ="covSum,covSEiso,covNoise"
x= array(c(1,1,0,0), dim=c(2,2))
y= array(c(1,0), dim=c(2,1))
loghyper = minimize(loghyper, 'gpr', 10, covfunc, x, y)
loghyper
}
