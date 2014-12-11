Attend-Activities-Rails
=======================

test app in rails to attend activities created by users

Application Steps:

1. Install default DEVISE gem commands 

2. Create scaffold for Activity, with reference to User, to create user_id fiesd in activity
	$ rails generate scaffold Activity description:text user:references
	- update the User model: has_many :activities

3. $ rake db:migrate

4. Add name field to User
	a. generate migrateion
		$ rails generate migration add_username_to_User username:text
		$ rake db:migrate
	b. adding Username the field in the view files
		- registrations/new.html.erb
		- registrations/edit.html.erb
	c. customize the strong parameters for the devise controller action to add Username
		- follow instructions here: http://www.jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
			- simply create a new controller file: registrations_controller.rb
			- inside customize the code provided in the above tutorial
			- configure routes.rb to read the registrations controller 

Now the DEVISE is working with new field USERNAME


__________________

Database table relations:

Users - Activities
	- one to many

Activities - Joining - Attendees
	- many to many through Joining
		$ rails generate scaffold Attendee user_id:integer
		$ rails generate model Joining activity:references attendee:references



