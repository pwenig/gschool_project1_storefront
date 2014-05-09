[![Build Status](https://travis-ci.org/pwenig/gschool_project1_storefront.svg?branch=master)](https://travis-ci.org/pwenig/gschool_project1_storefront)
[![Code Climate](https://codeclimate.com/github/pwenig/gschool_project1_storefront.png)](https://codeclimate.com/github/pwenig/gschool_project1_storefront)

#Storefront



## Background
The Storefront application allows users to suggest and vote on what they would like to see
in vacant storefronts in their community. Users can share thier ideas on thier Facebook pages
as well as Tweet them.

The application is built in Rails and uses a PostgreSQL database. Testing is done using Rspec.

## Important Links

* [Tracker](https://www.pivotaltracker.com/n/projects/1077102)
* [Staging](http://project-storefront-staging.herokuapp.com)
* [Production](http://project-storefront-production.herokuapp.com)

## Setup

Please follow the steps below to get this site set up for local development.

1. Run Bundle Install
1. Create database by running rake db:create
1. Run migrations with rake db:migrate
4. Run migrations in test database with RACK_ENV=test rake db:migrate
5. Run tests using rspec
