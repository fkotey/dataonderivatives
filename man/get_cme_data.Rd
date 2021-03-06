% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cme.R
\name{get_cme_data}
\alias{get_cme_data}
\title{Get CME SDR data}
\usage{
get_cme_data(date, asset_class = NULL, curate = TRUE)
}
\arguments{
\item{date}{the date for which data is required as Date or DateTime object.
It will only use the year, month and day elements to
determine the set of trades to return. It will return the set of trades
for the day starting on \code{date}.}

\item{asset_class}{the asset class for which you would like to download
trade data. Valid inputs are \code{"CR"} (credit), \code{"IR"} (rates),
\code{"FX"} (foreign exchange), \code{"CO"} (commodities). Can be a
vector of these. Defaults to \code{NULL} which corresponds to all asset
classes.}

\item{curate}{a logical flag indicating whether raw data should be returned
or whether the raw data should be processed (default). The latter involves
selecting particular fields and formatting these as seemed appropriate
based on data reviews at the time the formatting was coded.}
}
\value{
a data frame containing the requested data, or an empty data frame
  if data is unavailable
}
\description{
The CME Swap Data Repository (SDR) is a registered U.S. swap data repository
that allows market participants to fulfil their public disclosure
obligations under U.S. legislation. CME is required to make publicly
available price, trading volume and other trading data. It publishes this
data on an FTP site.
}
\examples{
\dontrun{
library (lubridate)
# All asset classes for day starting 6 May 2015
get_cme_data(ymd(20150506))
# Only IR and FX asset classes
get_cme_data(ymd(20150506), c("IR", "FX"))
}
}
\references{
\href{http://www.cmegroup.com/trading/global-repository-services/cme-swap-data-repository.html}{CME SDR}
}

