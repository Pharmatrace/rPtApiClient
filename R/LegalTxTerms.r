# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' LegalTxTerms Class
#'
#' @field timestamp_valid_from 
#' @field timestamp_valid_until 
#' @field validity_tolerance 
#' @field terms_id 
#' @field terms_version 
#' @field terms_id_previous_version 
#' @field terms_text 
#' @field language 
#' @field legislation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LegalTxTerms <- R6::R6Class(
  'LegalTxTerms',
  public = list(
    `timestamp_valid_from` = NULL,
    `timestamp_valid_until` = NULL,
    `validity_tolerance` = NULL,
    `terms_id` = NULL,
    `terms_version` = NULL,
    `terms_id_previous_version` = NULL,
    `terms_text` = NULL,
    `language` = NULL,
    `legislation` = NULL,
    initialize = function(`timestamp_valid_from`, `timestamp_valid_until`, `validity_tolerance`, `terms_id`, `terms_version`, `terms_id_previous_version`, `terms_text`, `language`, `legislation`){
      if (!missing(`timestamp_valid_from`)) {
        stopifnot(is.numeric(`timestamp_valid_from`), length(`timestamp_valid_from`) == 1)
        self$`timestamp_valid_from` <- `timestamp_valid_from`
      }
      if (!missing(`timestamp_valid_until`)) {
        stopifnot(is.numeric(`timestamp_valid_until`), length(`timestamp_valid_until`) == 1)
        self$`timestamp_valid_until` <- `timestamp_valid_until`
      }
      if (!missing(`validity_tolerance`)) {
        stopifnot(is.numeric(`validity_tolerance`), length(`validity_tolerance`) == 1)
        self$`validity_tolerance` <- `validity_tolerance`
      }
      if (!missing(`terms_id`)) {
        stopifnot(is.character(`terms_id`), length(`terms_id`) == 1)
        self$`terms_id` <- `terms_id`
      }
      if (!missing(`terms_version`)) {
        stopifnot(is.character(`terms_version`), length(`terms_version`) == 1)
        self$`terms_version` <- `terms_version`
      }
      if (!missing(`terms_id_previous_version`)) {
        stopifnot(is.character(`terms_id_previous_version`), length(`terms_id_previous_version`) == 1)
        self$`terms_id_previous_version` <- `terms_id_previous_version`
      }
      if (!missing(`terms_text`)) {
        stopifnot(is.character(`terms_text`), length(`terms_text`) == 1)
        self$`terms_text` <- `terms_text`
      }
      if (!missing(`language`)) {
        stopifnot(is.character(`language`), length(`language`) == 1)
        self$`language` <- `language`
      }
      if (!missing(`legislation`)) {
        stopifnot(is.character(`legislation`), length(`legislation`) == 1)
        self$`legislation` <- `legislation`
      }
    },
    toJSON = function() {
      LegalTxTermsObject <- list()
      if (!is.null(self$`timestamp_valid_from`)) {
        LegalTxTermsObject[['timestamp_valid_from']] <- self$`timestamp_valid_from`
      }
      if (!is.null(self$`timestamp_valid_until`)) {
        LegalTxTermsObject[['timestamp_valid_until']] <- self$`timestamp_valid_until`
      }
      if (!is.null(self$`validity_tolerance`)) {
        LegalTxTermsObject[['validity_tolerance']] <- self$`validity_tolerance`
      }
      if (!is.null(self$`terms_id`)) {
        LegalTxTermsObject[['terms_id']] <- self$`terms_id`
      }
      if (!is.null(self$`terms_version`)) {
        LegalTxTermsObject[['terms_version']] <- self$`terms_version`
      }
      if (!is.null(self$`terms_id_previous_version`)) {
        LegalTxTermsObject[['terms_id_previous_version']] <- self$`terms_id_previous_version`
      }
      if (!is.null(self$`terms_text`)) {
        LegalTxTermsObject[['terms_text']] <- self$`terms_text`
      }
      if (!is.null(self$`language`)) {
        LegalTxTermsObject[['language']] <- self$`language`
      }
      if (!is.null(self$`legislation`)) {
        LegalTxTermsObject[['legislation']] <- self$`legislation`
      }

      LegalTxTermsObject
    },
    fromJSON = function(LegalTxTermsJson) {
      LegalTxTermsObject <- jsonlite::fromJSON(LegalTxTermsJson)
      if (!is.null(LegalTxTermsObject$`timestamp_valid_from`)) {
        self$`timestamp_valid_from` <- LegalTxTermsObject$`timestamp_valid_from`
      }
      if (!is.null(LegalTxTermsObject$`timestamp_valid_until`)) {
        self$`timestamp_valid_until` <- LegalTxTermsObject$`timestamp_valid_until`
      }
      if (!is.null(LegalTxTermsObject$`validity_tolerance`)) {
        self$`validity_tolerance` <- LegalTxTermsObject$`validity_tolerance`
      }
      if (!is.null(LegalTxTermsObject$`terms_id`)) {
        self$`terms_id` <- LegalTxTermsObject$`terms_id`
      }
      if (!is.null(LegalTxTermsObject$`terms_version`)) {
        self$`terms_version` <- LegalTxTermsObject$`terms_version`
      }
      if (!is.null(LegalTxTermsObject$`terms_id_previous_version`)) {
        self$`terms_id_previous_version` <- LegalTxTermsObject$`terms_id_previous_version`
      }
      if (!is.null(LegalTxTermsObject$`terms_text`)) {
        self$`terms_text` <- LegalTxTermsObject$`terms_text`
      }
      if (!is.null(LegalTxTermsObject$`language`)) {
        self$`language` <- LegalTxTermsObject$`language`
      }
      if (!is.null(LegalTxTermsObject$`legislation`)) {
        self$`legislation` <- LegalTxTermsObject$`legislation`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "timestamp_valid_from": %d,
           "timestamp_valid_until": %d,
           "validity_tolerance": %d,
           "terms_id": %s,
           "terms_version": %s,
           "terms_id_previous_version": %s,
           "terms_text": %s,
           "language": %s,
           "legislation": %s
        }',
        self$`timestamp_valid_from`,
        self$`timestamp_valid_until`,
        self$`validity_tolerance`,
        self$`terms_id`,
        self$`terms_version`,
        self$`terms_id_previous_version`,
        self$`terms_text`,
        self$`language`,
        self$`legislation`
      )
    },
    fromJSONString = function(LegalTxTermsJson) {
      LegalTxTermsObject <- jsonlite::fromJSON(LegalTxTermsJson)
      self$`timestamp_valid_from` <- LegalTxTermsObject$`timestamp_valid_from`
      self$`timestamp_valid_until` <- LegalTxTermsObject$`timestamp_valid_until`
      self$`validity_tolerance` <- LegalTxTermsObject$`validity_tolerance`
      self$`terms_id` <- LegalTxTermsObject$`terms_id`
      self$`terms_version` <- LegalTxTermsObject$`terms_version`
      self$`terms_id_previous_version` <- LegalTxTermsObject$`terms_id_previous_version`
      self$`terms_text` <- LegalTxTermsObject$`terms_text`
      self$`language` <- LegalTxTermsObject$`language`
      self$`legislation` <- LegalTxTermsObject$`legislation`
    }
  )
)