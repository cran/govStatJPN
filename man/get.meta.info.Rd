\name{get.meta.info}
\alias{get.meta.info}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Object to Get Meta Data of a Specified Survey.
}
\description{
	This function purposes to get a meta data API offers.
}
\usage{
get.meta.info(app.id, stat.id)
}
\arguments{
  \item{app.id}{
		 Your application ID. Using all functions contained govStatJPN package, this ID is required.\cr
		 Registration page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=provisional}\cr
		 Login page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=login}\cr
		 After logging in, you are able to issue your application ID.
	}
  \item{stat.id}{
		 Required. This is an id in retuned values of \code{\link{get.stat.list}}.
	}
}
\details{
	This function is based on section 3.3 at the published pdf file 
	(\url{http://statdb.nstac.go.jp/wp/wp-content/uploads/2013/06/API-spec.pdf}).
}
\value{
	A data frame object is returned.
}
\references{
	\url{http://statdb.nstac.go.jp/}\cr
	\url{http://statdb.nstac.go.jp/wp/wp-content/uploads/2013/06/API-spec.pdf}
}
\author{
	Yuichio Otani <\email{yuichiro@otani.co}>
}
\note{
	This product uses the Gateway to Advanced and User-friendly Statistics Service API but is not endorsed or certified by the Statistics Bureau or the National Statistics Center.
}

\seealso{
 	\code{\link{get.stat.list}},
	\code{\link{get.stat.data}}
}
\examples{
	# app.id <- 'your application ID'
	# stat.list <- get.stat.list(app.id, list(surveyYears=2007, lang='J'))
	# meta.info <- get.meta.info(app.id, stat.list$id[1])
	# meta.info
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Japan }
\keyword{ Government }
\keyword{ API }
\keyword{ Open Data }
