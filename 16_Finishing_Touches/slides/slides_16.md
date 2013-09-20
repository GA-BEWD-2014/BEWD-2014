![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

#BEWD - Finishing Touches

###Instructor Name


---


##Agenda

*	Review Exercise - "Stuff Finder"
*	Front-End Frameworks
*	Deploying to Heroku

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Stuff Finder - Build

---


##Front-End Frameworks
###What about the front-end?
		
*	Use a front-end framework to add quick and easy styling to a Rails app.

---


##Front - End Frameworks
###Some Popular Options

*	Twitter Bootstrap
*	Foundation
*	Skeleton
*	Gumby

---


##Twitter Bootstrap
###Built w/ Bootstrap

Great [sites](http://builtwithbootstrap.com/) use Twitter Bootstrap

![](../../assets/rails/bs-docs-bootstrap-features.png)

---


##Front - End Frameworks
###Twitter Bootstrap

*	Built @ Twitter by two employees (@mdo and @fat)
*	Managed through GitHub
*	Great css components


---


<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Stuff Finder - Styled


---


##Heroku
###Platform as a Service

*	Pronounced her-OH-koo
*	Founded in 2007 by Orion Henry, James Lindenbaum, and Adam Wiggins.
*	Cloud application platform 
*	Allows free app deployment, and server management.


![](../../assets/rails/heroku-logo-light.png)

---



<img id ='icon' src="../../assets/ICL_icons/Code_along_icon_md.png">
##Stuff Finder - Heroku


---


##Heroku Recap
###PostgreSQL

*	Open source database
*	15 years of active development 
*	Runs on all major operating systems, 

![postgresql elephant](../../assets/rails/elephant.png)

---

##Heroku Recap
###PostgreSQL

	#Gemfile
		ruby "2.0.0"
		group :development do 
			gem 'sqlite3'
		end
		
		group :production do
			gem 'pg'
		end
---


##Heroku Recap
###Create & Deploy

Create App

	heroku create --stack cedar [<appname>]

Deploy App

	git push heroku master

Open App in Web Browser

	heroku open

---


<img id ='icon' src="../../assets/ICL_icons/Exercise_icon_md.png">
##Lab Time

Style and Push Changes

---


## Homework

####The countdown is on!
####4 lessons left!

Continue to work on your final project. 

---



<div id="resources">
## Resources

###Tips, Tricks & Advanced Reading


*	[Info-graphic](http://responsive.vermilion.com/compare.php) that compares different front-end frameworks.

*	Heroku [Cheat Sheet](http://ruten.ca/2012/02/15/heroku-cheatsheet-useful-heroku-commands-reference/)

*	Twitter Bootstrap [Documentation](http://twitter.github.io/bootstrap/)

*	Twitter Bootstrap [tutorial](http://webdesign.tutsplus.com/tutorials/workflow-tutorials/twitter-bootstrap-101-customize/).