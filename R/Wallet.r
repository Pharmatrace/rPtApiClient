# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Wallet Class
#'
#' @field balance 
#' @field wallet_id 
#' @field display_name 
#' @field owner_stakeholder_id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Wallet <- R6::R6Class(
  'Wallet',
  public = list(
    `balance` = NULL,
    `wallet_id` = NULL,
    `display_name` = NULL,
    `owner_stakeholder_id` = NULL,
    initialize = function(`balance`, `wallet_id`, `display_name`, `owner_stakeholder_id`){
      if (!missing(`balance`)) {
                stopifnot(is.numeric(`balance`), length(`balance`) == 1)
        self$`balance` <- `balance`
      }
      if (!missing(`wallet_id`)) {
                stopifnot(is.character(`wallet_id`), length(`wallet_id`) == 1)
        self$`wallet_id` <- `wallet_id`
      }
      if (!missing(`display_name`)) {
                stopifnot(is.character(`display_name`), length(`display_name`) == 1)
        self$`display_name` <- `display_name`
      }
      if (!missing(`owner_stakeholder_id`)) {
                stopifnot(is.character(`owner_stakeholder_id`), length(`owner_stakeholder_id`) == 1)
        self$`owner_stakeholder_id` <- `owner_stakeholder_id`
      }
    },
    toJSON = function() {
      WalletObject <- list()
      if (!is.null(self$`balance`)) {
        WalletObject[['balance']] <-
                self$`balance`
      }
      if (!is.null(self$`wallet_id`)) {
        WalletObject[['wallet_id']] <-
                self$`wallet_id`
      }
      if (!is.null(self$`display_name`)) {
        WalletObject[['display_name']] <-
                self$`display_name`
      }
      if (!is.null(self$`owner_stakeholder_id`)) {
        WalletObject[['owner_stakeholder_id']] <-
                self$`owner_stakeholder_id`
      }

      WalletObject
    },
    fromJSON = function(WalletJson) {
      WalletObject <- jsonlite::fromJSON(WalletJson)
      if (!is.null(WalletObject$`balance`)) {
                self$`balance` <- WalletObject$`balance`
      }
      if (!is.null(WalletObject$`wallet_id`)) {
                self$`wallet_id` <- WalletObject$`wallet_id`
      }
      if (!is.null(WalletObject$`display_name`)) {
                self$`display_name` <- WalletObject$`display_name`
      }
      if (!is.null(WalletObject$`owner_stakeholder_id`)) {
                self$`owner_stakeholder_id` <- WalletObject$`owner_stakeholder_id`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "balance":
                      %d
                      
                  
              ,
           "wallet_id":
                      
                      "%s"
                  
              ,
           "display_name":
                      
                      "%s"
                  
              ,
           "owner_stakeholder_id":
                      
                      "%s"
                  
              
        }',
                self$`balance`,
                self$`wallet_id`,
                self$`display_name`,
                self$`owner_stakeholder_id`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(WalletJson) {
      WalletObject <- jsonlite::fromJSON(WalletJson)
              self$`balance` <- WalletObject$`balance`
              self$`wallet_id` <- WalletObject$`wallet_id`
              self$`display_name` <- WalletObject$`display_name`
              self$`owner_stakeholder_id` <- WalletObject$`owner_stakeholder_id`
    }
  )
)
