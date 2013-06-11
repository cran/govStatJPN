\name{get.stat.list}
\alias{get.stat.list}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Object to Get a List of Survey.
}
\description{
	This object works to get a list of surveys.
}
\usage{
	get.stat.list(app.id, param)
}
\arguments{
  \item{app.id}{
		 Your application ID. Using all functions contained govStatJPN package, this ID is required.\cr
		 Registration page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=provisional}\cr
		 Login page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=login}\cr
		 After logging in, you are able to issue your application ID.
	}
  \item{param}{
		 You can set the list of survey years and language as a list object like \code{list(surveyYears=2012, lang="J")}.\cr
		 If survey year is not defined, this year's survey list will return.\cr
		 When you need data set in English. Define lang="E" instead of lang="J".\cr
		 Although setting other parameters is allowed in the API, the parameters that can be used in this function is limited into these two types.
		 	 The number of parameters can be set in this function will be extended in the future. 
	}
}
\details{
	This function is based on section 3.2 at the published pdf file (http://statdb.nstac.go.jp/wp/wp-content/uploads/2013/06/API-spec.pdf).
}
\value{
	\item{id}{This is a stat id of the survey. This object will be used in other functions in this package. The meanings of other values are provided in the reference(Japanese).}
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
	\code{\link{get.meta.info}},
	\code{\link{get.stat.data}}
}
\examples{
# app.id <- 'your application ID'
# stat.list <- get.stat.list(app.id, list(surveyYears=2007, lang='J'))
# stat.list

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Japan }
\keyword{ Government }
\keyword{ API }
\keyword{ Open Data }
