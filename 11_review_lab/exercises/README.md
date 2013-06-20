![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)


#Ritly

Time to review. You now have all the necessary knowledge to build a small Rails app, so let's build.


During this exercise we will create a [Bitly](https://bitly.com) clone. Using our app, users will input a url, and the Ritly application will generate a random code and associate it to the URL the user provided.

When a user goes to ```localhost:3000/random_generated_code``` they should be redirected to the corresponding URL they entered.


 Now users can go to localhost:300/random_code instead of 

##Reverse Engineering
####Time: 30 min

###Task Instructions

Step 1

*	Demo the app [here](/)


Step 2

*	Given the table table below, complete this bash command

```bash
$ rails generate model
```

|id|link |hash_code|created_at|updated_at|
|:-|:----|:--------|:---------|:---------|
|1|http://www.generalassemb.ly|_Ujq4Psg_SE|Wed, 19 Jun 2013 21:23:30 UTC +00:00|Wed, 19 Jun 2013 21:23:30 UTC +00:00|
|2|http://www.google.com|WG7VG9UwGdk|Wed, 19 Jun 2013 21:25:32 UTC +00:00|Wed, 19 Jun 2013 21:25:32 UTC +00:00|


Step 3

*	Given




























Coding Steps.
 
Therefore going to localhost:3000/WG7VG9UwGdk should redirect me to "http://www.generalassemb.ly"

*	ROUTES
	*	The root path should be to the index action in the home controller. 
		
*	VIEWS
	home/index.html.erb
		Contains the form to request a new random_generated_code for their entered URL. 
		
	url/show.html.erb
		Shows the generated random code.
		
	url/preview.html.erb
		Shows the preview of secure code.

		
Hint: You should have a redirectors action in urls_controller.rb



*	MODELS
	*	Create a model called "url" with "link" and "hash_code" attributes. 
	*	The link is the url to a webpage provided by the user. 
	*	The hash_code should be the string created by using SecureRandom. (what else can we use)

Here is an exmaple of the url database table in our application.
