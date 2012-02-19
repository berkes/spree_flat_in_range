SpreeFlatInRange
================

A [Spree calculator](http://guides.spreecommerce.com/adjustments.html)
to calculate fixed adjustments based on ranges.

For example, **free shipping above $100, and $4.39 for all orders under $100**, would mean a range *from 0 to
$99.99*, that *has a fixed shipping rate of $4.39*.


Usage
=====

Add to your gemfile in a Spree application:

`` gem 'spree_flat_in_range', '~> 0.1.x' ``

Then visit shipping or tax to use the calculation.


TODO
=======

* Introduce Percent based on range; to allow things like **$10 to $30 gives you 10% discount, above $30
gives you 15%**.
* Introduce "infinate" as possible upper boundry; so admins can provide
  cases like **above $100** easier; now they have to simple give a really
  large number.

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test app
    $ bundle exec rspec spec

Copyright (c) 2012 [Bèr Kessels], released under the New BSD License
