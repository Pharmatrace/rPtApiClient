# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Error Class
#'
#' @field code 
#' @field message 
#' @field fields 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Error <- R6::R6Class(
  'Error',
  public = list(
    `code` = NULL,
    `message` = NULL,
    `fields` = NULL,
    initialize = function(`code`, `message`, `fields`){
      if (!missing(`code`)) {
                stopifnot(is.numeric(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!missing(`message`)) {
                stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
      if (!missing(`fields`)) {
                stopifnot(is.character(`fields`), length(`fields`) == 1)
        self$`fields` <- `fields`
      }
    },
    toJSON = function() {
      ErrorObject <- list()
      if (!is.null(self$`code`)) {
        ErrorObject[['code']] <-
                self$`code`
      }
      if (!is.null(self$`message`)) {
        ErrorObject[['message']] <-
                self$`message`
      }
      if (!is.null(self$`fields`)) {
        ErrorObject[['fields']] <-
                self$`fields`
      }

      ErrorObject
    },
    fromJSON = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
      if (!is.null(ErrorObject$`code`)) {
                self$`code` <- ErrorObject$`code`
      }
      if (!is.null(ErrorObject$`message`)) {
                self$`message` <- ErrorObject$`message`
      }
      if (!is.null(ErrorObject$`fields`)) {
                self$`fields` <- ErrorObject$`fields`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "code":
                      %d
                      
                  
              ,
           "message":
                      
                      "%s"
                  
              ,
           "fields":
                      
                      "%s"
                  
              
        }',
                self$`code`,
                self$`message`,
                self$`fields`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(ErrorJson) {
      ErrorObject <- jsonlite::fromJSON(ErrorJson)
              self$`code` <- ErrorObject$`code`
              self$`message` <- ErrorObject$`message`
              self$`fields` <- ErrorObject$`fields`
    }
  )
)
