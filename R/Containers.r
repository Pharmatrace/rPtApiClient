# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Containers Class
#'
#' @field offset 
#' @field limit 
#' @field count 
#' @field listing 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Containers <- R6::R6Class(
  'Containers',
  public = list(
    `offset` = NULL,
    `limit` = NULL,
    `count` = NULL,
    `listing` = NULL,
    initialize = function(`offset`, `limit`, `count`, `listing`){
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
      if (!missing(`listing`)) {
                stopifnot(is.vector(`listing`), length(`listing`) != 0)
                sapply(`listing`, function(x) stopifnot(R6::is.R6(x)))
        self$`listing` <- `listing`
      }
    },
    toJSON = function() {
      ContainersObject <- list()
      if (!is.null(self$`offset`)) {
        ContainersObject[['offset']] <-
                self$`offset`
      }
      if (!is.null(self$`limit`)) {
        ContainersObject[['limit']] <-
                self$`limit`
      }
      if (!is.null(self$`count`)) {
        ContainersObject[['count']] <-
                self$`count`
      }
      if (!is.null(self$`listing`)) {
        ContainersObject[['listing']] <-
                sapply(self$`listing`, function(x) x$toJSON())
      }

      ContainersObject
    },
    fromJSON = function(ContainersJson) {
      ContainersObject <- jsonlite::fromJSON(ContainersJson)
      if (!is.null(ContainersObject$`offset`)) {
                self$`offset` <- ContainersObject$`offset`
      }
      if (!is.null(ContainersObject$`limit`)) {
                self$`limit` <- ContainersObject$`limit`
      }
      if (!is.null(ContainersObject$`count`)) {
                self$`count` <- ContainersObject$`count`
      }
      if (!is.null(ContainersObject$`listing`)) {
                self$`listing` <- sapply(ContainersObject$`listing`, function(x) {
                  listingObject <- Container$new()
                  listingObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
                  listingObject
            })
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "offset":
                      %d
                      
                  
              ,
           "limit":
                      %d
                      
                  
              ,
           "count":
                      %d
                      
                  
              ,
           "listing":
                  ["%s"]
              
        }',
                self$`offset`,
                self$`limit`,
                self$`count`,
                paste0(sapply(self$`listing`, function(x) x$toJSON()), collapse='","')
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(ContainersJson) {
      ContainersObject <- jsonlite::fromJSON(ContainersJson)
              self$`offset` <- ContainersObject$`offset`
              self$`limit` <- ContainersObject$`limit`
              self$`count` <- ContainersObject$`count`
              self$`listing` <- sapply(ContainersObject$`listing`, function(x) Container$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
