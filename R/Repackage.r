# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Repackage Class
#'
#' @field timestamp 
#' @field tx_uid 
#' @field terms_id 
#' @field transaction_channel 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Repackage <- R6::R6Class(
  'Repackage',
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
      RepackageObject <- list()
      if (!is.null(self$`timestamp`)) {
        RepackageObject[['timestamp']] <- self$`timestamp`
      }
      if (!is.null(self$`tx_uid`)) {
        RepackageObject[['tx_uid']] <- self$`tx_uid`
      }
      if (!is.null(self$`terms_id`)) {
        RepackageObject[['terms_id']] <- self$`terms_id`
      }
      if (!is.null(self$`transaction_channel`)) {
        RepackageObject[['transaction_channel']] <- self$`transaction_channel`
      }

      RepackageObject
    },
    fromJSON = function(RepackageJson) {
      RepackageObject <- jsonlite::fromJSON(RepackageJson)
      if (!is.null(RepackageObject$`timestamp`)) {
        self$`timestamp` <- RepackageObject$`timestamp`
      }
      if (!is.null(RepackageObject$`tx_uid`)) {
        self$`tx_uid` <- RepackageObject$`tx_uid`
      }
      if (!is.null(RepackageObject$`terms_id`)) {
        self$`terms_id` <- RepackageObject$`terms_id`
      }
      if (!is.null(RepackageObject$`transaction_channel`)) {
        self$`transaction_channel` <- RepackageObject$`transaction_channel`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "timestamp": %d,
           "tx_uid": %s,
           "terms_id": %s,
           "transaction_channel": %s
        }',
        self$`timestamp`,
        self$`tx_uid`,
        self$`terms_id`,
        self$`transaction_channel`
      )
    },
    fromJSONString = function(RepackageJson) {
      RepackageObject <- jsonlite::fromJSON(RepackageJson)
      self$`timestamp` <- RepackageObject$`timestamp`
      self$`tx_uid` <- RepackageObject$`tx_uid`
      self$`terms_id` <- RepackageObject$`terms_id`
      self$`transaction_channel` <- RepackageObject$`transaction_channel`
    }
  )
)