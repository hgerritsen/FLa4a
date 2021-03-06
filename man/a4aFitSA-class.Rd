% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/a4aFitSA-class.R
\docType{class}
\name{a4aFitSA-class}
\alias{a4aFitSA-class}
\alias{show,a4aFitSA-method}
\alias{submodels,a4aFitSA-method}
\alias{a4aFitSA}
\alias{a4aFitSA-methods}
\alias{a4aFitSA,missing-method}
\alias{a4aFit,a4aFitSA-method}
\alias{a4aFitSA,a4aFit-method}
\alias{pars}
\alias{pars-methods}
\alias{pars,a4aFitSA-method}
\alias{m,a4aFitSA-method}
\alias{wt,a4aFitSA-method}
\alias{iter,a4aFitSA-method}
\alias{a4aFitSAs-class}
\alias{a4aFitSAs}
\alias{a4aFitSAs-methods}
\alias{a4aFitSAs,list-method}
\alias{a4aFitSAs,a4aFitSA-method}
\alias{a4aFitSAs,missing-method}
\title{S4 class \code{a4aFitSA}}
\usage{
\S4method{show}{a4aFitSA}(object)

\S4method{submodels}{a4aFitSA}(object)

a4aFitSA(object, ...)

\S4method{a4aFitSA}{missing}(object, ...)

\S4method{a4aFit}{a4aFitSA}(object, ...)

\S4method{a4aFitSA}{a4aFit}(object, ...)

pars(object)

\S4method{pars}{a4aFitSA}(object)

\S4method{m}{a4aFitSA}(object)

\S4method{wt}{a4aFitSA}(object)

\S4method{iter}{a4aFitSA}(obj, it)

a4aFitSAs(object, ...)

\S4method{a4aFitSAs}{list}(object, ...)

\S4method{a4aFitSAs}{a4aFitSA}(object, ...)

\S4method{a4aFitSAs}{missing}(object, ...)
}
\arguments{
\item{object}{object of relevant class (see signature of method)}

\item{...}{additional argument list that might never be used}

\item{obj}{the object to be subset}

\item{it}{iteration to be extracted}
}
\description{
The \code{a4aFitSA} class extends \code{a4aFit} to store information about the parameters of the model.
}
\section{Slots}{

\describe{
   \item{call}{The function call}
   \item{clock}{Information on call duration}
   \item{fitSumm}{Fit summary}
   \item{stock.n}{Estimates of stock numbers-at-age}
   \item{harvest}{Estimates of fishing mortality at age}
   \item{catch.n}{Estimates of catch numbers-at-age}
   \item{index}{Estimates of survey or CPUE indices-at-age}
   \item{pars}{an object of class \code{SCAPars} with information about model parameters}
}
}

\section{Accessors}{

All slots in the class have accessor and replacement methods defined that
allow retrieving and substituting individual slots.

The values passed for replacement need to be of the class of that slot.
A numeric vector can also be used when replacing FLQuant slots, and the
vector will be used to substitute the values in the slot, but not its other
attributes.
}

\section{Constructor}{

A construction method exists for this class that can take named arguments for
any of its slots. All slots are then created to match the requirements of the
class validity. If an unnamed \code{FLQuant} object is provided, this is used
for sizing, but not for populating any slot.
}

\examples{
data(ple4)
data(ple4.index)

obj <- sca(stock=ple4, indices=FLIndices(ple4.index), fit="assessment")
obj

slotNames(obj)
clock(obj)
fitSumm(obj)

flq <- stock.n(obj)
is(flq)
flq <- index(obj)
is(flq)

logLik(obj)
AIC(obj)
BIC(obj)

is(pars(obj))
}
