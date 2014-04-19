![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)

Time to review. You now have all the necessary knowledge to build a small Rails app. Let's build!

#Ritly
####Time: 60 min

We are going to build an app similar to [Bitly](https://bitly.com), called Ritly. The challenge is going to be understanding the flow of control in a Rails app.

Instructors demo the app for students.

Here is a brief overview of the app.

* 	Visitors to Ritly will be able to request a randomly generated code for their URL link and save it to the database.
*	Visitors to Ritly can go to ```localhost:3000/<CODE>```, where ```<CODE>``` is a randomly generated code, and the application will redirect them to the  matched link in the database.
*	Visitors to Ritly can go to ```localhost:3000/<CODE>/preview```, and the app will preview the matching URL link from the database.


###Task Instructions

We are going to challenge your understanding of a Rails app. With the demo, description above and hints below build Ritly.

Here are a few hints.

####The URLs Table

|id|link |hash code|created at|updated at|
|:---|:----|:--------|:---------|:---------|
|1|http://www.generalassemb.ly|516396|Wed, 19 Jun 2013 21:23:30 UTC +00:00|Wed, 19 Jun 2013 21:23:30 UTC +00:00|
|2|http://www.google.com|234687|Wed, 19 Jun 2013 21:25:32 UTC +00:00|Wed, 19 Jun 2013 21:25:32 UTC +00:00|
|3|http://www.bustedtees.com|093674|Wed, 19 Jun 2013 21:23:30 UTC +00:00|Wed, 19 Jun 2013 21:23:30 UTC +00:00|


####The routes.rb file

```ruby
		Ritly::Application.routes.draw do
			root "home#index"
			resources :urls #TODO: restrict this to just :create, :new and :show

			get '/:code', to: 'urls#redirectors'
			get '/:code/preview', to: 'urls#preview'
		end
```

####The Views

*	show.html.erb
	*	Visitors are redirected to the show page after they request a randomly generated code for their URL link.
	*	Displays the random code that was generated: "Your code is: random_code" Go to localhost:3000/random_code to visit your URL.


####Generating a Random Number or Hash

*	To generate a random number in Ruby: ```rand(10000)```.
*	__Bonus__ Use SecureRandom.urlsafe_base64(8) to generate a random hash code.

Remember, Google is your friend!



#Rewsly

###App Description

The City Times needs an app and has hired BEWD students to build it. They want to enter the 21st century and move their print newspaper online.

You will build Rewsly during lesson 11 & 12.

####Time: 60 min

Here are the features needed by next class.

For now City times is only interested in linking to other news sources instead of writing their own news.

*	The front page welcomes visitors "Welcome to Rewsly" and list all titles in the stories table.
*	Visitors can view a story's upvotes, category and link to more details by clicking on the title from the front page.
*	Visitors can search for a specific story by title and category from the front page.
*	Visitors can add stories to the database if all fields are present.
	*	Prevent visitors from saving a record if it has errors.


We've supplied you with [story seeds](story_seeds.rb).

__Bonus__

*	Only display stories with 4 or more upvotes on the front page.
*	Only display stories created today on the front page.

Remember, Google is your friend!

Happy coding :)





