# README

Rails setup

# install rvm, bundler and ruby using rvm
https://www.phusionpassenger.com/library/walkthroughs/deploy/ruby/ownserver/nginx/oss/install_language_runtime.html 

# install rails
gem install rails



Steps followed to create this app

# create new rails app with the name blog
$ rails new blog

$ cd blog
# scaffolding of model post
$ rails generate scaffold post title:string body:text

$ rails generate scaffold comment post_id:integer body:text