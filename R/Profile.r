# PharmaTrace Supply Chain Information Network API
#
# The PharmaTrace SCIN API provides network members a resource and process oriented access to the blockchain backed market and inventory information. It represents a layer of abstraction above the Hyperledger network to facilitate a business focused development of clients and integration systems without the need to directly connect to Hyperledger nodes.
#
# OpenAPI spec version: 0.0.1
# Contact: api@pharmatrace.io
# Generated by: https://openapi-generator.tech


#' Profile Class
#'
#' @field first_name 
#' @field last_name 
#' @field email 
#' @field twitter_name 
#' @field linkedin_name 
#' @field facebook_name 
#' @field picture 
#' @field stakeholder_id 
#' @field active 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Profile <- R6::R6Class(
  'Profile',
  public = list(
    `first_name` = NULL,
    `last_name` = NULL,
    `email` = NULL,
    `twitter_name` = NULL,
    `linkedin_name` = NULL,
    `facebook_name` = NULL,
    `picture` = NULL,
    `stakeholder_id` = NULL,
    `active` = NULL,
    initialize = function(`first_name`, `last_name`, `email`, `twitter_name`, `linkedin_name`, `facebook_name`, `picture`, `stakeholder_id`, `active`){
      if (!missing(`first_name`)) {
                stopifnot(is.character(`first_name`), length(`first_name`) == 1)
        self$`first_name` <- `first_name`
      }
      if (!missing(`last_name`)) {
                stopifnot(is.character(`last_name`), length(`last_name`) == 1)
        self$`last_name` <- `last_name`
      }
      if (!missing(`email`)) {
                stopifnot(is.character(`email`), length(`email`) == 1)
        self$`email` <- `email`
      }
      if (!missing(`twitter_name`)) {
                stopifnot(is.character(`twitter_name`), length(`twitter_name`) == 1)
        self$`twitter_name` <- `twitter_name`
      }
      if (!missing(`linkedin_name`)) {
                stopifnot(is.character(`linkedin_name`), length(`linkedin_name`) == 1)
        self$`linkedin_name` <- `linkedin_name`
      }
      if (!missing(`facebook_name`)) {
                stopifnot(is.character(`facebook_name`), length(`facebook_name`) == 1)
        self$`facebook_name` <- `facebook_name`
      }
      if (!missing(`picture`)) {
                stopifnot(is.character(`picture`), length(`picture`) == 1)
        self$`picture` <- `picture`
      }
      if (!missing(`stakeholder_id`)) {
                stopifnot(is.character(`stakeholder_id`), length(`stakeholder_id`) == 1)
        self$`stakeholder_id` <- `stakeholder_id`
      }
      if (!missing(`active`)) {
        self$`active` <- `active`
      }
    },
    toJSON = function() {
      ProfileObject <- list()
      if (!is.null(self$`first_name`)) {
        ProfileObject[['first_name']] <-
                self$`first_name`
      }
      if (!is.null(self$`last_name`)) {
        ProfileObject[['last_name']] <-
                self$`last_name`
      }
      if (!is.null(self$`email`)) {
        ProfileObject[['email']] <-
                self$`email`
      }
      if (!is.null(self$`twitter_name`)) {
        ProfileObject[['twitter_name']] <-
                self$`twitter_name`
      }
      if (!is.null(self$`linkedin_name`)) {
        ProfileObject[['linkedin_name']] <-
                self$`linkedin_name`
      }
      if (!is.null(self$`facebook_name`)) {
        ProfileObject[['facebook_name']] <-
                self$`facebook_name`
      }
      if (!is.null(self$`picture`)) {
        ProfileObject[['picture']] <-
                self$`picture`
      }
      if (!is.null(self$`stakeholder_id`)) {
        ProfileObject[['stakeholder_id']] <-
                self$`stakeholder_id`
      }
      if (!is.null(self$`active`)) {
        ProfileObject[['active']] <-
                self$`active`
      }

      ProfileObject
    },
    fromJSON = function(ProfileJson) {
      ProfileObject <- jsonlite::fromJSON(ProfileJson)
      if (!is.null(ProfileObject$`first_name`)) {
                self$`first_name` <- ProfileObject$`first_name`
      }
      if (!is.null(ProfileObject$`last_name`)) {
                self$`last_name` <- ProfileObject$`last_name`
      }
      if (!is.null(ProfileObject$`email`)) {
                self$`email` <- ProfileObject$`email`
      }
      if (!is.null(ProfileObject$`twitter_name`)) {
                self$`twitter_name` <- ProfileObject$`twitter_name`
      }
      if (!is.null(ProfileObject$`linkedin_name`)) {
                self$`linkedin_name` <- ProfileObject$`linkedin_name`
      }
      if (!is.null(ProfileObject$`facebook_name`)) {
                self$`facebook_name` <- ProfileObject$`facebook_name`
      }
      if (!is.null(ProfileObject$`picture`)) {
                self$`picture` <- ProfileObject$`picture`
      }
      if (!is.null(ProfileObject$`stakeholder_id`)) {
                self$`stakeholder_id` <- ProfileObject$`stakeholder_id`
      }
      if (!is.null(ProfileObject$`active`)) {
                self$`active` <- ProfileObject$`active`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "first_name":
                      
                      "%s"
                  
              ,
           "last_name":
                      
                      "%s"
                  
              ,
           "email":
                      
                      "%s"
                  
              ,
           "twitter_name":
                      
                      "%s"
                  
              ,
           "linkedin_name":
                      
                      "%s"
                  
              ,
           "facebook_name":
                      
                      "%s"
                  
              ,
           "picture":
                      
                      "%s"
                  
              ,
           "stakeholder_id":
                      
                      "%s"
                  
              ,
           "active":
                      
                      "%s"
                  
              
        }',
                self$`first_name`,
                self$`last_name`,
                self$`email`,
                self$`twitter_name`,
                self$`linkedin_name`,
                self$`facebook_name`,
                self$`picture`,
                self$`stakeholder_id`,
                self$`active`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(ProfileJson) {
      ProfileObject <- jsonlite::fromJSON(ProfileJson)
              self$`first_name` <- ProfileObject$`first_name`
              self$`last_name` <- ProfileObject$`last_name`
              self$`email` <- ProfileObject$`email`
              self$`twitter_name` <- ProfileObject$`twitter_name`
              self$`linkedin_name` <- ProfileObject$`linkedin_name`
              self$`facebook_name` <- ProfileObject$`facebook_name`
              self$`picture` <- ProfileObject$`picture`
              self$`stakeholder_id` <- ProfileObject$`stakeholder_id`
              self$`active` <- ProfileObject$`active`
    }
  )
)
