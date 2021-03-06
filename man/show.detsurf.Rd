% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surveyplots.r
\name{show.detsurf}
\alias{show.detsurf}
\title{Plotting the detection probability surface}
\usage{
show.detsurf(fit, session = 1, surface = TRUE, mask = NULL,
  col = "black", levels = NULL, xlim = NULL, ylim = NULL,
  show.labels = TRUE, trap.col = "red", add = FALSE, ...)
}
\arguments{
\item{fit}{A fitted model from \link{fit.ascr}.}

\item{session}{For multisession models, the session from which the
plot should be generated.}

\item{surface}{Logical, if \code{TRUE} a 3D detection surface is
plotted over the mask point locations, otherwise a contour plot
is shown.}

\item{mask}{A matrix with two columns. Each row provides Cartesian
coordinates for the location of a mask point. The function
\link[ascr]{create.mask} will return a suitable object. The
mask used to fit the model \code{fit} will be used by default;
this argument is usually used when estimated location contours
need to be plotted to a higher resolution than this.}

\item{col}{The colour of the plotted contours.}

\item{levels}{A numeric vector giving the values to be associated
with the plotted contours. Alternatively, this can be the
character string "esa", which results in a contour
encapsulating an area equal to the estimated effective sampling
area.}

\item{xlim}{A numeric vector of length 2, giving the x coordinate
range.}

\item{ylim}{A numeric vector of length 2, giving the y coordinate
range.}

\item{show.labels}{Logical, if \code{TRUE}, contours are labelled
with the appropriate probability.}

\item{trap.col}{The colour of the points representing detector
locations.}

\item{add}{Logical, if \code{TRUE}, contours will be added to an
existing plot.}

\item{...}{Arguments to be passed to \link{persp}.}
}
\description{
Plots the detection probability surface, based on trap locations
and the estimated detection function from a model fitted using
\link{fit.ascr}.
}
\examples{
show.detsurf(example$fits$simple.hn)

}
