\name{get.stat.data}
\alias{get.stat.data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
	Object to Get Statistical Data of a Specified Survey.
}
\description{
	This function purposes to get a data of a survey the defined with stat id. 
}
\usage{
get.stat.data(app.id, param, stat.id)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{app.id}{
		 Your application ID. Using all functions contained govStatJPN package, this ID is required.\cr
		 Registration page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=provisional}\cr
		 Login page is \url{https://statdb.nstac.go.jp/apiuser/php/index.php?action=login}\cr
		 After logging in, you are able to issue your application ID.
	}
  \item{param}{
		 You can set the list of survey years and language as a list object like \code{list(limit=100, lang="J")}.\cr
		 The default value of limit is 10.\cr
		 When you need data set in English. Define lang="E" instead of lang="J".\cr
		 Although setting other parameters is allowed in the API, the parameters that can be used in this function is limited into these two types.
		 	 The number of parameters can be set in this function will be extended in the future. 
	}
  \item{stat.id}{
		 Required. This is an id in retuned values of \code{\link{get.stat.list}}.
	}
}
\details{
	This function is based on section 3.4 at the published pdf file (\url{http://statdb.nstac.go.jp/wp/wp-content/uploads/2013/06/API-spec.pdf}). 
}
\value{
	 \item{value}{
	 	 This is the data of the specified survey.
	 }
	 \item{note}{
	 	 This is the note of the specified survey.
	 }
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
	\code{\link{get.meta.info}}
}
\examples{
# stat.list <- get.stat.list(app.id, list(surveyYears=2007, lang='J'))
# stat.data <- get.stat.data(app.id, list(limit=100),stat.list$id[1])
# show data of the survey
# stat.data$value
# summation of data
# sum(stat.data$value$value)
# mean of data
# mean(stat.data$value$value)
# standard deviation of data
# sd(stat.data$value$value)

# get histogram
# hist(stat.data$value$value, breaks=25)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Japan }
\keyword{ Government }
\keyword{ API }
\keyword{ Open Data }
