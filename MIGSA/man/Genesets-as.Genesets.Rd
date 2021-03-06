% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Genesets-asGenesets.R
\docType{methods}
\name{as.Genesets}
\alias{as.Genesets}
\alias{as.Genesets,list-method}
\title{Creates a GeneSetCollection from a list}
\usage{
as.Genesets(x, ...)

\S4method{as.Genesets}{list}(x, is_GO = FALSE)
}
\arguments{
\item{x}{list of character vectors which are the genes corresponding to each 
GeneSet. The list must have names (unique).}

\item{...}{not in use.}

\item{is_GO}{logical indicating if this gene sets are from the Gene Ontology.
If true, then each GeneSet setName must be a GO id.}
}
\value{
A GeneSetCollection object.
}
\description{
\code{as.Genesets} creates a GeneSetCollection object from the data present 
in a list. Each element will parse to a GeneSet. For each list element, its 
name will be the GeneSet setName, and the content are the genes.
}
\examples{
## Lets create a list with three manually created gene sets and load it as a 
## GeneSetCollection object.
myGs1 <- as.character(1:10);
myGs2 <- as.character(15:21);
myGs3 <- as.character(25:30);
myGssList <- list(myGs1, myGs2, myGs3);
names(myGssList) <- c("myGs1", "myGs2", "myGs3");
myGss <- as.Genesets(myGssList);

}
\seealso{
\code{\link{Genesets-enrichr}}

\code{\link{geneSetsFromFile}}

\code{\link{loadGo}}
}
