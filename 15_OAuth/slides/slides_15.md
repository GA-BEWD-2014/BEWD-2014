![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

#BEWD - OAuth

###Instructor Name


---


##Agenda

*	Defining Oauth
*	Getting Permission From Twitter
*	OmniAuth Twitter Gem
*	Associations Review (Optional)

---
##OAuth
###Definition

OAuth (Open Authorization) is an open standard for authentication and authorization on the Internet.

![Twitter Sign In](../../assets/rails/sign_in_twitter.png)

---


##OAuth
###Why Use It?

*	Easy sign up for your app through Twitter, Facebook, Foursquare, LinkedIn…or any other social media site that offers it.

*	Your app has access to lots of user information without giving you their password

*	Your user can revoke access from your app at any time.

---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Sign Up Application

*	Go to [https://dev.twitter.com/apps/](https://dev.twitter.com/apps/)
*	Create a new application. 
	*	For the Website, put your own blog. It doesn't matter this is a test. 
	*	For the call back URL, use ```http://127.0.0.1:3000/auth/twitter/callback``` 

---



<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##OmniAuth Gem 


---

##Recap
###Export, Source

*	Prevent sensitive information from being posted to Github :-)

*	Source will execute the contents of a file in your bash session

		#inside your ~/.bash_profile
		export TWITTER_KEY=my_key                                           
		export TWITTER_SECRET=my_secret

---



##Recap

*	Used to access values from "middleware" parameters


		env['omniauth.auth]

---



##Review

Association Review

---



## Homework

Signup for an account with Heroku.

---


<div id="resources">
## Resources


###Tips, Tricks & Advanced Reading

*	OmniAuth vs OAuth Stack overflow [post](http://stackoverflow.com/questions/6715572/omniauth-vs-oauth-plugin)

*	Introduction to Twitter Authentication [Documentation](https://dev.twitter.com/docs/auth/using-oauth)

###Still Feel Lost?
####Catch Up With These Resources

*	OmniAuth [Rails Cast](http://railscasts.com/episodes/235-omniauth-part-1)

*	OmniAuth / OAuth [defined](http://searchsoa.techtarget.com/definition/OAuth) again.

*	OAuth The Big Picture & the Benefits [Video](http://apigee.com/about/api-best-practices/oauth-big-picture-0)

