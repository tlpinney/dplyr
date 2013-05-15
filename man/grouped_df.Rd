\name{grouped_df}
\alias{group_by.data.frame}
\alias{grouped_df}
\alias{is.grouped_df}
\alias{is.lazy.grouped_df}
\title{A grouped data frame.}
\usage{
  grouped_df(data, vars, lazy = TRUE, drop = TRUE,
    name = NULL)

  \method{is.lazy}{grouped_df} (x)

  is.grouped_df(x)

  \method{group_by}{data.frame} (x, ..., drop = TRUE,
    name = NULL)
}
\arguments{
  \item{data}{a data source or data frame.}

  \item{vars}{a list of quoted variables.}

  \item{lazy}{if \code{TRUE}, index will be computed lazily
  every time it is needed. If \code{FALSE}, index will be
  computed up front on object creation.}

  \item{drop}{if \code{TRUE} preserve all factor levels,
  even those without data.}

  \item{name}{data source name.}
}
\description{
  The easiest way to create a grouped data frame is to call
  the \code{group_by} method on a data frame or data
  source: this will take care of capturing the unevalated
  expressions for you.
}
