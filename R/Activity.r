# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Activity Class
#'
#' @field uuid 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Activity <- R6::R6Class(
  'Activity',
  public = list(
    `uuid` = NULL,
    initialize = function(`uuid`){
      if (!missing(`uuid`)) {
                stopifnot(is.character(`uuid`), length(`uuid`) == 1)
        self$`uuid` <- `uuid`
      }
    },
    toJSON = function() {
      ActivityObject <- list()
      if (!is.null(self$`uuid`)) {
        ActivityObject[['uuid']] <-
                self$`uuid`
      }

      ActivityObject
    },
    fromJSON = function(ActivityJson) {
      ActivityObject <- jsonlite::fromJSON(ActivityJson)
      if (!is.null(ActivityObject$`uuid`)) {
                self$`uuid` <- ActivityObject$`uuid`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "uuid":
                      
                      "%s"
                  
              
        }',
                self$`uuid`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(ActivityJson) {
      ActivityObject <- jsonlite::fromJSON(ActivityJson)
              self$`uuid` <- ActivityObject$`uuid`
    }
  )
)
