% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dropdown.R
\name{selectInput}
\alias{selectInput}
\title{Create a select list input control}
\usage{
selectInput(
  inputId,
  label,
  choices,
  selected = NULL,
  multiple = FALSE,
  width = NULL,
  ...
)
}
\arguments{
\item{inputId}{The input slot that will be used to access the value.}

\item{label}{Display label for the control, or NULL for no label.}

\item{choices}{List of values to select from. If elements of the list are named,
then that name — rather than the value — is displayed to the user.}

\item{selected}{The initially selected value (or multiple values if multiple = TRUE).
If not specified then defaults to the first value for single-select lists and no
values for multiple select lists.}

\item{multiple}{Is selection of multiple items allowed?}

\item{width}{The width of the input.}

\item{...}{Arguments passed to \link{dropdown_input}.}
}
\description{
Create a select list that can be used to choose a single or multiple items from a list of values.
}
\examples{
## Only run examples in interactive R sessions
if (interactive()) {

  library(shiny.semantic)

  # basic example
  shinyApp(
    ui = semanticPage(
      selectInput("variable", "Variable:",
                  c("Cylinders" = "cyl",
                    "Transmission" = "am",
                    "Gears" = "gear")),
      tableOutput("data")
    ),
    server = function(input, output) {
      output$data <- renderTable({
        mtcars[, c("mpg", input$variable), drop = FALSE]
      }, rownames = TRUE)
    }
  )
}

}
