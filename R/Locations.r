# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Locations Class
#'
#' @field offset 
#' @field limit 
#' @field count 
#' @field history 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Locations <- R6::R6Class(
  'Locations',
  public = list(
    `offset` = NULL,
    `limit` = NULL,
    `count` = NULL,
    `history` = NULL,
    initialize = function(`offset`, `limit`, `count`, `history`){
      if (!missing(`offset`)) {
        stopifnot(is.numeric(`offset`), length(`offset`) == 1)
        self$`offset` <- `offset`
      }
      if (!missing(`limit`)) {
        stopifnot(is.numeric(`limit`), length(`limit`) == 1)
        self$`limit` <- `limit`
      }
      if (!missing(`count`)) {
        stopifnot(is.numeric(`count`), length(`count`) == 1)
        self$`count` <- `count`
      }
      if (!missing(`history`)) {
        stopifnot(is.list(`history`), length(`history`) != 0)
        lapply(`history`, function(x) stopifnot(R6::is.R6(x)))
        self$`history` <- `history`
      }
    },
    toJSON = function() {
      LocationsObject <- list()
      if (!is.null(self$`offset`)) {
        LocationsObject[['offset']] <- self$`offset`
      }
      if (!is.null(self$`limit`)) {
        LocationsObject[['limit']] <- self$`limit`
      }
      if (!is.null(self$`count`)) {
        LocationsObject[['count']] <- self$`count`
      }
      if (!is.null(self$`history`)) {
        LocationsObject[['history']] <- lapply(self$`history`, function(x) x$toJSON())
      }

      LocationsObject
    },
    fromJSON = function(LocationsJson) {
      LocationsObject <- jsonlite::fromJSON(LocationsJson)
      if (!is.null(LocationsObject$`offset`)) {
        self$`offset` <- LocationsObject$`offset`
      }
      if (!is.null(LocationsObject$`limit`)) {
        self$`limit` <- LocationsObject$`limit`
      }
      if (!is.null(LocationsObject$`count`)) {
        self$`count` <- LocationsObject$`count`
      }
      if (!is.null(LocationsObject$`history`)) {
        self$`history` <- lapply(LocationsObject$`history`, function(x) {
          historyObject <- Location$new()
          historyObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          historyObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "offset": %d,
           "limit": %d,
           "count": %d,
           "history": [%s]
        }',
        self$`offset`,
        self$`limit`,
        self$`count`,
        lapply(self$`history`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(LocationsJson) {
      LocationsObject <- jsonlite::fromJSON(LocationsJson)
      self$`offset` <- LocationsObject$`offset`
      self$`limit` <- LocationsObject$`limit`
      self$`count` <- LocationsObject$`count`
      self$`history` <- lapply(LocationsObject$`history`, function(x) Location$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
