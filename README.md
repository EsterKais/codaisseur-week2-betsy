Betsy -
----
is a Ruby on Rails-webshop loosely inspired by Etsy.com, enabling users to offer their own products for sale. In the case of Betsy: cows.
Users are able to login, create a profile and maintain products, or browse the product page and add other users' products to a shopping cart (session-based).
Products can be filtered based on several attributes such as price, origin, gender and age.
This project was developed as part of the Codaisseur traineeship, week 3.

The aim of this project has been to learn and practice with:
- devise authentication
- image-hosting on Cloudinary
- file-uploading with Carrierwave
- Rails models and associations
- PostgresQL database
- testing with Rspec and Capybara
- sessions
- scopes
- deployment to Deis

Screenshot
----

![Betsy homepage](http://res.cloudinary.com/dsiyhc1tt/image/upload/c_scale,w_989/v1479647548/Screen_Shot_2016-11-20_at_13.54.18_gxf0cp.png)

Database
----
The database consists of the following tables:
- User ( has_many :products, has_one :profile, has_many :orders )
- Profile ( belongs_to :user )
- Product ( belongs_to :user, has_many :photos, has_many :line_items )
- Order ( belongs_to :user, has_many :line_items )
- Photo ( belongs_to :product )
- lineItem ( belongs_to :product, belongs_to :order )
