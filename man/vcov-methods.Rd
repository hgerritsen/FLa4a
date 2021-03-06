% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vcov-methods.R
\docType{methods}
\name{vcov}
\alias{vcov}
\alias{vcov,a4aFitSA-method}
\alias{vcov,SCAPars-method}
\alias{vcov,submodels-method}
\alias{vcov,submodel-method}
\alias{vcov<-,a4aFitSA,numeric-method}
\alias{vcov<-,SCAPars,numeric-method}
\alias{vcov<-,a4aStkParams,numeric-method}
\alias{vcov<-,submodels,numeric-method}
\alias{vcov<-,submodel,numeric-method}
\title{Variance-covariance matrix}
\usage{
\S4method{vcov}{a4aFitSA}(object)

\S4method{vcov}{SCAPars}(object)

\S4method{vcov}{submodels}(object)

\S4method{vcov}{submodel}(object)

\S4method{vcov}{a4aFitSA,numeric}(object, ...) <- value

\S4method{vcov}{SCAPars,numeric}(object, ...) <- value

\S4method{vcov}{a4aStkParams,numeric}(object, ...) <- value

\S4method{vcov}{submodels,numeric}(object, ...) <- value

\S4method{vcov}{submodel,numeric}(object, ...) <- value
}
\arguments{
\item{object}{object of relevant class (see signature of method)}

\item{...}{additional argument list that might never be used}

\item{value}{the new object}
}
\description{
Methods to extract and replace the variance-covariance matrix.
}
