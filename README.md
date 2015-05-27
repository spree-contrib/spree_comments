Spree Comments
==============

Spree Comments is an extension for Spree to allow commenting on different models via the
admin ui and currently supports Orders & Shipments.

Spree Comments also supports optional comment Types which can be defined per comment-able
object (i.e. Order, Shipment, etc) via the admin Configuration tab.

This is based on a fork / rename of jderrett/spree-order-comments and is now an officially
supported extension.

Notes:

* Comments are create-only.  You cannot edit or remove them from the Admin UI.

Installation
------------

Add the following to your Gemfile (or check Versionfile for Spree versions requirements):

    gem "spree_comments", github: 'spree-contrib/spree_comments'

Run:

```shell
bundle install
bundle exec rails g spree_comments:install
```

Run the migrations if you did not during the installation generator:

    bundle exec rake db:migrate

Start your server: 

    rails s
