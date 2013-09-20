<<<<<<< HEAD
![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")
=======
![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")
>>>>>>> master


https://github.com/plataformatec/devise#getting-started

<<<<<<< HEAD

#BEWD - Authentication

###Instructor Name


---


##Agenda

*	Review
	*	Rewsly Solution
	*	Rity Solution (Briefly)
*	Authentication
	*	Authentication Explained
	*	Devise Gem
*	Lab
	*	Authenticated Ritly
=======

#BEWD - Authentication

###Instructor Name


---


##Agenda

*	Review
	*	Rewsly Solution
*	Authentication
	*	Authentication Explained
	*	Devise Gem	
>>>>>>> master

---


##Review
<<<<<<< HEAD
###Rewsly & Ritly

*	Let's review Rewsly solution from last class.
*	Since we're going to work on Ritly, let's review that (briefly) as well.

=======
###Rewsly 

*	Let's review Rewsly solution from last class.

>>>>>>> master
---


##Authentication

![GitHub Sign Up Page](../../assets/rails/login_screen.png)
<<<<<<< HEAD

---

=======

---

>>>>>>> master

##Authentication

*	Use of a combination of username and password to validate user identity. (Obvious I know…)
*	Tracking a user's identity on our app through the __session__.
<<<<<<< HEAD

---

##Authentication
###Security

![lock image](../../assets/rails/digital_security.jpeg)

---

##Security
*	Can I view users' passwords in my app?

####NO!

=======

---

##Authentication
###What?

Authentication diagram

---

##Authentication
###Security
![lock image](../../assets/rails/digital_security.jpeg)

---



##Security
*	Can I view users' passwords in my app?
####NO!

>>>>>>> master
---

##Security
###Storing Passwords
<<<<<<< HEAD

Bad practice to keep passwords in “clear text”

*	Passwords can't be stored in plain text in your database.
If your database is compromised then passwords are compromised as well.
	*	Don't use the same password for all sites.

=======
Bad practice to keep passwords in “clear text”*	Passwords can't be stored in plain text in your database.
If your database is compromised then passwords are compromised as well.
	*	Don't use the same password for all sites.	

>>>>>>> master
---


##Security
###Hashing
<<<<<<< HEAD

Use one way hash

	```Digest::SHA1.hexdigest("secret")
	# => "e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4"
	```
=======
Use one way hash

	```Digest::SHA1.hexdigest("secret")
	# => "e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4"
	```
>>>>>>> master
---


##Security
###Adding Salt
<<<<<<< HEAD

=======

>>>>>>> master
Salt is random data that are used as an additional input to a one-way function that hashes a password.


	```salt = "a761ce3a45d97e41840a788495e85a70d1bb3815"
		password = "secret"
		Digest::SHA1.hexdigest(salt+password)
		# =>"7963ca00e2e48ea80c615d037494de00a0964682"
<<<<<<< HEAD
	```

=======
	```
>>>>>>> master
---


##Authentication
###Managing Users

<<<<<<< HEAD
*	When the user is authenticated we store the user_id in the __session__.

=======
*	When the user is authenticated we store the user_id in the __session__.

>>>>>>> master
---


##Managing Users
<<<<<<< HEAD
###Session

*	Session data commonly includes the browser user’s identity (name, login, shopping cart, etc.).

*	To work, the web server must uniquely identify each browser’s particular HTTP requests while the session lasts.

*	Commonly, web servers identify browsers by asking them to store a __cookie__.

---

##Managing Users
###Cookie

*	Used to store small bits of information (maximum size about 4k).
*	Cookies allow web servers to provide a temporary unique ID to a browser, to enable session management.
	*	Browser storage is not secure.
	*	Sensitive data (credit card numbers, etc.) should never be set in a cookie

=======
###Session*	Session data commonly includes the browser user’s identity (name, login, shopping cart, etc.).*	To work, the web server must uniquely identify each browser’s particular HTTP requests while the session lasts.*	Commonly, web servers identify browsers by asking them to store a __cookie__.

---

##Managing Users
###Cookie

*	Used to store small bits of information (maximum size about 4k).
*	Cookies allow web servers to provide a temporary unique ID to a browser, to enable session management.	*	Browser storage is not secure.	*	Sensitive data (credit card numbers, etc.) should never be set in a cookie
	
>>>>>>> master
---


##Authentication
###Gems
<<<<<<< HEAD
Creating authentication from scratch is a complex process (see resources for more info). However Developers have created Gems to make authentication "easy".

=======
Creating authentication from scratch is a complex process (see resources for more info). However Developers have created Gems to make authentication "easy".
 
>>>>>>> master
*	__Devise__
*	CanCan
*	Clearance
*	OmniAuth
*	DoorKeeper
<<<<<<< HEAD

---


##Authentication
###Devise GEM
[https://github.com/plataformatec/devise](https://github.com/plataformatec/devise)

*	Straight-forward to implement, integrate and customize.
*	Handles complex security, so you don't have to.
*	Provides controller filters and view helpers (more on that in the code along).
* 	Recently updated (v3.0.0) with Rails 4 support!


=======
	
---


##GEMS
###Free Code!
*	Gems are code really smart people built for you. 
![](../../assets/rails/dev_built.png)	
---


##Authentication 
###Devise GEM
[Devise Documentation](https://github.com/plataformatec/devise)
*	"Easy" to implement, integrate and customize.
*	Handles complex security, so you don't have to. 
*	Provides controller filters and view helpers (more on that in the code along).
>>>>>>> master
---



<<<<<<< HEAD
<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Rewsly - Adding Devise
=======
<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Rewsly - Adding Devise 
>>>>>>> master

---


<<<<<<< HEAD
##Devise
###Recap

*	Adding Devise Gem to the Gemfile

		gem 'devise', '~> 3.0.0'

---


##Devise
###Recap

*	Using Devise
=======
##Devise 
###Recap
*	Adding Gems to the Gemfile

		gem 'devise', git: "https://github.com/plataformatec/devise.git", branch:  "rails4"
	
---


##Devise 
###Recap
*	Using Devise
>>>>>>> master

		rails g devise:install # creates all the devise Controllers, views and initializers
		rails g devise user    # creates User model (or modifies it if it exists)
		rake db:migrate        # Let's Go!
<<<<<<< HEAD

=======
	
>>>>>>> master

---


<<<<<<< HEAD
##Devise
###Recap

*	View helpers
=======
##Devise 
###Recap
*	View helpers
>>>>>>> master

		<%= user_is_logged_in? %>
		<%= current_user %>

---


<<<<<<< HEAD
##Authentication
###Recap

*	View helpers
=======
##Authentication 
###Recap
*	View helpers
>>>>>>> master

		<%= user_is_logged_in? %>
		<%= current_user %>

---

<<<<<<< HEAD
##Devise
###Recap

*	Blocking Access
=======
##Devise 
###Recap
*	Blocking Access
>>>>>>> master

		class ApplicationController ...
			before_action :authenticate_user!
		end
<<<<<<< HEAD

=======
 
>>>>>>> master
		class HomeController < ApplicationController
			skip_before_action :authenticate_user!
		end

---

<<<<<<< HEAD
##Devise
###Recap

*	Changing the default Route names
=======
##Devise 
###Recap
*	Changing the default Route names
>>>>>>> master

		devise_for :users, :path_names => { sign_in: 'login', sign_out: 'logout' }

---


<<<<<<< HEAD
<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time - Authenticated Ritly

---


## Homework

Write a list of information/data you want to store about your user.

---


<div id="resources">
=======
<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time - Ritly

---


## Homework

Write a list of information/data you want to store about your user. 

---


<div id="resources">
>>>>>>> master
## Resources

###Cheat Sheet

No cheat sheet this class. Remember, Google is your friend!


###Tips, Tricks & Advanced Reading

*	If you want to expand your knowledge about Rails authentication gems visit [Ruby Toolbox](https://www.ruby-toolbox.com/categories/rails_authentication) for a few more authentication gem options.

*	Great [article](http://scientopia.org/blogs/goodmath/2013/03/02/passwords-hashing-and-salt/) explaining passwords, hashing, and salt.


*	Advanced [article](http://edapx.com/2012/04/18/authorization-and-user-management-in-rails/) about authorization and users management in rails.

<<<<<<< HEAD
*	[Tutorial](http://everydayrails.com/2012/07/31/rails-admin-panel-from-scratch.html) on how to create an advanced admin panel.

*	[Authentication From Scratch](http://railscasts.com/episodes/250-authentication-from-scratch) Rails Cast



###Still Feel Lost?
####Catch Up With These Resources

*	[Devise](http://railscasts.com/episodes/209-introducing-devise) Rails Cast



=======
*	[Tutorial](http://everydayrails.com/2012/07/31/rails-admin-panel-from-scratch.html) on how to create an advanced admin panel. 

*	[Authentication From Scratch](http://railscasts.com/episodes/250-authentication-from-scratch) Rails Cast 



###Still Feel Lost? 
####Catch Up With These Resources

*	[Devise](http://railscasts.com/episodes/209-introducing-devise) Rails Cast 



>>>>>>> master
