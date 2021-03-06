#' Understory spawn width correction factors.
#'
#' Spawn width correction factors for Pacific Herring understory spawn surveys
#' by region and year. These correction factors account for an error that resulted
#' in underestimated spawn width for understory dive surveys
#' \insertCite{ClearyEtal2017,GrinnellEtalYYYY}{SpawnIndex}.
#'
#' @format Tibble with rows for years and columns for regions.
#' @note Adjust spawn width for affected understory spawn surveys by multiplying
#'   the observed width by the corresponding correction fator for the affected
#'   years.
#' @docType data
#' @references \insertAllCited{}
#' @seealso \code{\link{CalcUnderSpawn}}
#' @examples
#' data(underWidthFac)
#' underWidthFac
"underWidthFac"

#' Parameters for spawn index calculations.
#'
#' Parameters for Pacific Herring spawn index calculations: converting eggs to
#' biomass, spawn-on-kelp calculations, as well as surface, Macrocystis, and
#' understory spawn index calculations.
#'
#' @format List with items:
#' \describe{
#' \item{conversion}{List with items:
#'   \emph{omega} is the number of eggs per kilogram of female spawners
#'   \insertCite{Hay1985,HayBrett1988}{SpawnIndex}, and \emph{phi} is the
#'   proportion of spawners that are female.}
#' \item{SOK}{List with items:
#'   \emph{nu} is the proportion of SOK product that is kelp
#'   \insertCite{ShieldsEtal1985}{SpawnIndex}, \emph{upsilon} is the SOK
#'   product weight increase due to brining as a proportion
#'   \insertCite{WhyteEnglar1977}{SpawnIndex}, and \emph{M} is the average
#'   weight in kilograms of a fertilized egg
#'   \insertCite{HayMiller1982}{SpawnIndex}.}
#' \item{surface}{List with items:
#'   \emph{alpha} is the regression intercept
#'   \insertCite{SchweigertEtal1997}{SpawnIndex}, and \emph{beta} is the
#'   regression slope \insertCite{SchweigertEtal1997}{SpawnIndex}.}
#' \item{macrocystis}{List with items:
#'   \emph{beta} is the regression slope
#'   \insertCite{HaegeleSchweigert1990}{SpawnIndex}, \emph{gamma} is the
#'   regression exponent on egg layers
#'   \insertCite{HaegeleSchweigert1990}{SpawnIndex}, \emph{delta} is the
#'   regression exponent on plant height
#'   \insertCite{HaegeleSchweigert1990}{SpawnIndex}, and \emph{epsilon} is the
#'   regression exponent on number of stalks per plant
#'   \insertCite{HaegeleSchweigert1990}{SpawnIndex}.}
#' \item{understory}{List with items:
#'   \emph{alpha} is the regression slope for substrate
#'   \insertCite{HaegeleEtal1979}{SpawnIndex}, \emph{beta} is the regression
#'   slope for algae \insertCite{Schweigert2005}{SpawnIndex}, \emph{gamma} is
#'   the regression exponent on number of egg layers
#'   \insertCite{Schweigert2005}{SpawnIndex}, and \emph{delta} is the regression
#'   exponent on proportion of algae \insertCite{Schweigert2005}{SpawnIndex}.} }
#' @docType data
#' @importFrom Rdpack reprompt
#' @references \insertAllCited{}
#' @seealso \code{\link{CalcEggConversion}} \code{\link{CalcBiomassSOK}}
#'   \code{\link{CalcSurfSpawn}} \code{\link{CalcMacroSpawn}}
#'   \code{\link{CalcUnderSpawn}}
#' @examples
#' data(pars)
#' pars
"pars"

#' Spawn intensity categories and number of egg layers.
#'
#' Spawn intensity categories and number of egg layers for Pacific Herring
#' surface spawn surveys. From 1928 to 1978, surface spawn surveyors catetorized
#' spawn by subjective `intensity' categories instead of directly estimating the
#' number of egg layers
#' \insertCite{HayKronlund1987,SchweigertStocker1988,GrinnellEtalYYYY}{SpawnIndex}.
#'
#' @format Tibble with 9 rows and 3 columns: intensity category, description,
#'   and number of egg layers.
#' @docType data
#' @importFrom Rdpack reprompt
#' @references \insertAllCited{}
#' @seealso \code{\link{CalcSurfSpawn}}
#' @examples
#' data(intensity)
#' intensity
"intensity"

#' Algae types and coefficients.
#'
#' Algae types and coefficients for Pacific Herring understory spawn surveys
#' \insertCite{Schweigert2005}{SpawnIndex}. Algae coefficients account for the
#' effect of algae morphology on Pacific Herring egg density
#' \insertCite{GrinnellEtalYYYY}{SpawnIndex}.
#'
#' @format Tibble with 8 rows and 3 columns: algae type, algae code, and
#'   coefficient.
#' @docType data
#' @importFrom Rdpack reprompt
#' @references \insertAllCited{}
#' @seealso \code{\link{CalcUnderSpawn}}
#' @examples
#' data(algaeCoefs)
#' algaeCoefs
"algaeCoefs"
