\name{as.data.frame.eeg_group}
\alias{as.data.frame.eeg_group}
\title{Convert an eeg_group object to a data frame}
\usage{
\method{as.data.frame}{eeg_group}(
  x,
  row.names = NULL,
  optional = FALSE,
  long = FALSE,
  coords = TRUE,
  ...
)
}
\arguments{
\item{x}{An object of class \code{eeg_group}.}

\item{row.names}{Kept for compatibility with the \code{as.data.frame} S3
generic. This argument is ignored.}

\item{optional}{Kept for compatibility with the \code{as.data.frame} S3 generic.
This argument is ignored.}

\item{long}{Logical. If \code{FALSE}, return one row per sample with one column
per signal channel. If \code{TRUE}, convert signal columns to long format with
one row per sample and electrode. Defaults to \code{FALSE}.}

\item{coords}{Logical. If \code{TRUE} and \code{long = TRUE}, include electrode
coordinate columns from the channel information. Ignored when \code{long = FALSE}.
Defaults to \code{TRUE}.}

\item{...}{Additional arguments passed to other \code{as.data.frame} methods.}
}
\value{
A data frame. In wide format, the output combines all columns from
\code{x$signals} and \code{x$timings}, and includes epoch-level columns such as
\code{epoch_labels} when available. In long format, signal channel columns are
pivoted into \code{electrode} and \code{amplitude} columns. If requested,
electrode coordinates are joined to the long-format output.
}
\description{
Convert an \code{eeg_group} object to a data frame by combining signal data,
timing information, and available epoch metadata.
}
\details{
The method first binds \code{x$signals} and \code{x$timings} column-wise. If the
object contains an \code{epochs} table, epoch metadata are joined using matching
keys present in both tables, typically \code{participant_id} and \code{epoch}.
This adds columns such as \code{epoch_labels} to the output.

When \code{long = TRUE}, electrode signal columns are pivoted to long format
using the channel names from the object. If \code{coords = TRUE}, electrode
coordinates \code{x} and \code{y} from the channel information are also joined by
\code{electrode}.
}
\examples{
# Wide data frame with signal, timing, and epoch metadata columns
df_wide <- as.data.frame(group_data)

# Long data frame with electrode and amplitude columns
df_long <- as.data.frame(group_data, long = TRUE)

# Long data frame without electrode coordinates
df_long_no_coords <- as.data.frame(group_data, long = TRUE, coords = FALSE)
}
\seealso{
\code{\link{as.data.frame}}, \code{\link{select_participants}}
}
\concept{data conversion functions}
