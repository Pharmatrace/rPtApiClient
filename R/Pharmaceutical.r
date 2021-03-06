# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Pharmaceutical Class
#'
#' @field pharmaceutical_id 
#' @field gtin 
#' @field trade_name 
#' @field ean_code 
#' @field manufacturer_id 
#' @field image 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Pharmaceutical <- R6::R6Class(
  'Pharmaceutical',
  public = list(
    `pharmaceutical_id` = NULL,
    `gtin` = NULL,
    `trade_name` = NULL,
    `ean_code` = NULL,
    `manufacturer_id` = NULL,
    `image` = NULL,
    initialize = function(`pharmaceutical_id`, `gtin`, `trade_name`, `ean_code`, `manufacturer_id`, `image`){
      if (!missing(`pharmaceutical_id`)) {
                stopifnot(is.character(`pharmaceutical_id`), length(`pharmaceutical_id`) == 1)
        self$`pharmaceutical_id` <- `pharmaceutical_id`
      }
      if (!missing(`gtin`)) {
                stopifnot(is.character(`gtin`), length(`gtin`) == 1)
        self$`gtin` <- `gtin`
      }
      if (!missing(`trade_name`)) {
                stopifnot(is.character(`trade_name`), length(`trade_name`) == 1)
        self$`trade_name` <- `trade_name`
      }
      if (!missing(`ean_code`)) {
                stopifnot(is.character(`ean_code`), length(`ean_code`) == 1)
        self$`ean_code` <- `ean_code`
      }
      if (!missing(`manufacturer_id`)) {
                stopifnot(is.character(`manufacturer_id`), length(`manufacturer_id`) == 1)
        self$`manufacturer_id` <- `manufacturer_id`
      }
      if (!missing(`image`)) {
                stopifnot(is.character(`image`), length(`image`) == 1)
        self$`image` <- `image`
      }
    },
    toJSON = function() {
      PharmaceuticalObject <- list()
      if (!is.null(self$`pharmaceutical_id`)) {
        PharmaceuticalObject[['pharmaceutical_id']] <-
                self$`pharmaceutical_id`
      }
      if (!is.null(self$`gtin`)) {
        PharmaceuticalObject[['gtin']] <-
                self$`gtin`
      }
      if (!is.null(self$`trade_name`)) {
        PharmaceuticalObject[['trade_name']] <-
                self$`trade_name`
      }
      if (!is.null(self$`ean_code`)) {
        PharmaceuticalObject[['ean_code']] <-
                self$`ean_code`
      }
      if (!is.null(self$`manufacturer_id`)) {
        PharmaceuticalObject[['manufacturer_id']] <-
                self$`manufacturer_id`
      }
      if (!is.null(self$`image`)) {
        PharmaceuticalObject[['image']] <-
                self$`image`
      }

      PharmaceuticalObject
    },
    fromJSON = function(PharmaceuticalJson) {
      PharmaceuticalObject <- jsonlite::fromJSON(PharmaceuticalJson)
      if (!is.null(PharmaceuticalObject$`pharmaceutical_id`)) {
                self$`pharmaceutical_id` <- PharmaceuticalObject$`pharmaceutical_id`
      }
      if (!is.null(PharmaceuticalObject$`gtin`)) {
                self$`gtin` <- PharmaceuticalObject$`gtin`
      }
      if (!is.null(PharmaceuticalObject$`trade_name`)) {
                self$`trade_name` <- PharmaceuticalObject$`trade_name`
      }
      if (!is.null(PharmaceuticalObject$`ean_code`)) {
                self$`ean_code` <- PharmaceuticalObject$`ean_code`
      }
      if (!is.null(PharmaceuticalObject$`manufacturer_id`)) {
                self$`manufacturer_id` <- PharmaceuticalObject$`manufacturer_id`
      }
      if (!is.null(PharmaceuticalObject$`image`)) {
                self$`image` <- PharmaceuticalObject$`image`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "pharmaceutical_id":
                      
                      "%s"
                  
              ,
           "gtin":
                      
                      "%s"
                  
              ,
           "trade_name":
                      
                      "%s"
                  
              ,
           "ean_code":
                      
                      "%s"
                  
              ,
           "manufacturer_id":
                      
                      "%s"
                  
              ,
           "image":
                      
                      "%s"
                  
              
        }',
                self$`pharmaceutical_id`,
                self$`gtin`,
                self$`trade_name`,
                self$`ean_code`,
                self$`manufacturer_id`,
                self$`image`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(PharmaceuticalJson) {
      PharmaceuticalObject <- jsonlite::fromJSON(PharmaceuticalJson)
              self$`pharmaceutical_id` <- PharmaceuticalObject$`pharmaceutical_id`
              self$`gtin` <- PharmaceuticalObject$`gtin`
              self$`trade_name` <- PharmaceuticalObject$`trade_name`
              self$`ean_code` <- PharmaceuticalObject$`ean_code`
              self$`manufacturer_id` <- PharmaceuticalObject$`manufacturer_id`
              self$`image` <- PharmaceuticalObject$`image`
    }
  )
)
