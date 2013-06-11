\name{govStatJPN-package}
\alias{govStatJPN-package}
\alias{govStatJPN}
\docType{package}
\title{
	Package to load public survey data by Japanese government offered via their Application Programming Interface (API).
}
\description{
	This package purposes to use the public data in simple way.\cr
	This product uses the Gateway to Advanced and User-friendly Statistics Service API but is not endorsed or certified by the Statistics Bureau or the National Statistics Center.
}
\details{
\tabular{ll}{
	Package: \tab govStatJPN\cr
	Type: \tab Package\cr
	Version: \tab 0.1a\cr
	Date: \tab 2013-06-11\cr
	License: \tab Yuichiro Otani <yuichiro@otani.co>\cr
	LazyLoad: \tab yes\cr
}
}
\author{
	Yuichio Otani <\email{yuichiro@otani.co}>
}
\references{
	\url{http://statdb.nstac.go.jp/}\cr
	\url{http://statdb.nstac.go.jp/wp/wp-content/uploads/2013/06/API-spec.pdf}
}
\keyword{ package }
\seealso{
	\code{\link{get.stat.list}},
	\code{\link{get.meta.info}},
	\code{\link{get.stat.data}}
}
\examples{
	# library(govStatJPN)
}
