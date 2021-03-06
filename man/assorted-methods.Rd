% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\docType{methods}
\name{assorted methods}
\alias{assorted methods}
\alias{getYidx}
\alias{getYidx-methods}
\alias{getYidx,FLQuant-method}
\alias{is.empty}
\alias{niters}
\alias{niters-methods}
\alias{niters,FLModelSim-method}
\alias{niters,a4aGr-method}
\alias{dims,a4aStkParams-method}
\title{Assorted methods needed by FLa4a}
\usage{
getYidx(object, ...)

\S4method{getYidx}{FLQuant}(object, year)

is.empty(object)

niters(object, ...)

\S4method{niters}{FLModelSim}(object)

\S4method{niters}{a4aGr}(object)

\S4method{dims}{a4aStkParams}(obj)
}
\arguments{
\item{object}{object of relevant class (see signature of method)}

\item{...}{additional argument list that might never be used}

\item{year}{\code{numeric} with year to be extracted}

\item{obj}{an object}
}
\description{
Assorted methods needed by FLa4a
}
\section{getYidx}{

Gets an FLQuant's numeric id for a vector of "years". For internal use and not very interesting for users. It takes an \code{FLQuant} object and \code{vector} of years and returns a \code{numeric vector} that can be used to subset the \code{FLQuant}.
}

\section{is.empty}{

Method \code{is.empty} checks if an object is empty. It takes any object and returns a logical, \code{TRUE}, if the object is of length 0.
}

\section{niters}{

Compute number of iterations. Takes an object of any \code{FLR} class and returns a \code{numeric}.
}

\section{dims}{

Extracts the dims of the parameters.
}

\examples{
#Example use of getYidx:
data(ple4)
flq <- catch(ple4)
getYidx(flq, 2000:2004)
flq[, getYidx(flq, 2000:2004)]
#Example use of is.empty:
is.empty(list())
is.empty(list(a=2))
#Example use of niters:
mm <- matrix(NA, ncol=3, nrow=3)
diag(mm) <- c(50, 0.001,0.001)
mm[upper.tri(mm)] <- mm[lower.tri(mm)] <- c(0.1,0.01,0.00004)
md <- ~linf*(1-exp(-k*(t-t0)))
imd <- ~t0-1/k*log(1-len/linf)
prs <- FLPar(linf=58.5, k=0.086, t0=0.001, units=c("cm","yr^-1","yr"))
vbObj <- a4aGr(grMod=md, grInvMod=imd, params=prs, vcov=mm, distr="norm")
# Generate 100 sample sets
vbObj <- mvrnorm(100,vbObj)
niters(vbObj)
#Example use of dims:
dims(FLPar())
}
