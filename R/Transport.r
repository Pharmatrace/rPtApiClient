# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Transport Class
#'
#' @field timestamp 
#' @field tx_uid 
#' @field terms_id 
#' @field transaction_channel 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Transport <- R6::R6Class(
  'Transport',
  public = list(
    `timestamp` = NULL,
    `tx_uid` = NULL,
    `terms_id` = NULL,
    `transaction_channel` = NULL,
    initialize = function(`timestamp`, `tx_uid`, `terms_id`, `transaction_channel`){
      if (!missing(`timestamp`)) {
                stopifnot(is.numeric(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!missing(`tx_uid`)) {
                stopifnot(is.character(`tx_uid`), length(`tx_uid`) == 1)
        self$`tx_uid` <- `tx_uid`
      }
      if (!missing(`terms_id`)) {
                stopifnot(is.character(`terms_id`), length(`terms_id`) == 1)
        self$`terms_id` <- `terms_id`
      }
      if (!missing(`transaction_channel`)) {
                stopifnot(is.character(`transaction_channel`), length(`transaction_channel`) == 1)
        self$`transaction_channel` <- `transaction_channel`
      }
    },
    toJSON = function() {
      TransportObject <- list()
      if (!is.null(self$`timestamp`)) {
        TransportObject[['timestamp']] <-
                self$`timestamp`
      }
      if (!is.null(self$`tx_uid`)) {
        TransportObject[['tx_uid']] <-
                self$`tx_uid`
      }
      if (!is.null(self$`terms_id`)) {
        TransportObject[['terms_id']] <-
                self$`terms_id`
      }
      if (!is.null(self$`transaction_channel`)) {
        TransportObject[['transaction_channel']] <-
                self$`transaction_channel`
      }

      TransportObject
    },
    fromJSON = function(TransportJson) {
      TransportObject <- jsonlite::fromJSON(TransportJson)
      if (!is.null(TransportObject$`timestamp`)) {
                self$`timestamp` <- TransportObject$`timestamp`
      }
      if (!is.null(TransportObject$`tx_uid`)) {
                self$`tx_uid` <- TransportObject$`tx_uid`
      }
      if (!is.null(TransportObject$`terms_id`)) {
                self$`terms_id` <- TransportObject$`terms_id`
      }
      if (!is.null(TransportObject$`transaction_channel`)) {
                self$`transaction_channel` <- TransportObject$`transaction_channel`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "timestamp":
                      %d
                      
                  
              ,
           "tx_uid":
                      
                      "%s"
                  
              ,
           "terms_id":
                      
                      "%s"
                  
              ,
           "transaction_channel":
                      
                      "%s"
                  
              
        }',
                self$`timestamp`,
                self$`tx_uid`,
                self$`terms_id`,
                self$`transaction_channel`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(TransportJson) {
      TransportObject <- jsonlite::fromJSON(TransportJson)
              self$`timestamp` <- TransportObject$`timestamp`
              self$`tx_uid` <- TransportObject$`tx_uid`
              self$`terms_id` <- TransportObject$`terms_id`
              self$`transaction_channel` <- TransportObject$`transaction_channel`
    }
  )
)
