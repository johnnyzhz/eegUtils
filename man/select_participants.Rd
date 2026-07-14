\name{select_participants}
\alias{select_participants}
\alias{select_participants.default}
\alias{select_participants.eeg_group}
\title{Select participants from grouped EEG data}
\usage{
select_participants(data, ...)

\method{select_participants}{default}(data, ...)

\method{select_participants}{eeg_group}(
  data,
  participant_id = NULL,
  keep = TRUE,
  df_out = FALSE,
  ...
)
}
\arguments{
\item{data}{An \code{eeg_group} object from which to select participants.}

\item{...}{Additional arguments passed to methods.}

\item{participant_id}{A character vector containing the participant IDs to keep
or remove. Participant IDs are matched against the \code{participant_id} column
in \code{data$timings}.}

\item{keep}{Logical. If \code{TRUE}, the selected participants are retained. If
\code{FALSE}, the selected participants are removed. Defaults to \code{TRUE}.}

\item{df_out}{Logical. If \code{TRUE}, return a \code{data.frame} instead of an
\code{eeg_group} object. Defaults to \code{FALSE}.}
}
\value{
An \code{eeg_group} object with \code{signals}, \code{timings}, and any
participant-indexed \code{epochs} or \code{events} subset to the requested
participants. If \code{df_out = TRUE}, returns a \code{data.frame}.
}
\description{
Select a subset of participants from an \code{eeg_group} object while preserving
the grouped EEG data structure.
}
\details{
\code{select_participants()} is an S3 generic. The \code{eeg_group} method uses
\code{participant_id} values in \code{data$timings} to identify rows belonging
to each participant. The same row selection is applied to \code{data$signals}
and \code{data$timings}. If \code{data$epochs} or \code{data$events} contain a
\code{participant_id} column, those tables are also subset to the remaining
participants.

If \code{participant_id} is \code{NULL}, or if any requested participant ID is
not found, the original object is returned with a warning. If
\code{data$timings} does not contain a \code{participant_id} column, the method
stops with an error.
}
\examples{
subset_data <- select_participants(
  group_data,
  participant_id = "sub-001_ses-1_task-EmotionProcessingandRegulationtask_eeg"
)

subset_data <- select_participants(
  group_data,
  participant_id = c(
    "sub-001_ses-1_task-EmotionProcessingandRegulationtask_eeg",
    "sub-002_ses-1_task-EmotionProcessingandRegulationtask_eeg"
  )
)

without_sub001 <- select_participants(
  group_data,
  participant_id = "sub-001_ses-1_task-EmotionProcessingandRegulationtask_eeg",
  keep = FALSE
)
}
\seealso{
\code{\link{select_times}}, \code{\link{select_elecs}},
\code{\link{select_epochs}}
}
\concept{data selection functions}
