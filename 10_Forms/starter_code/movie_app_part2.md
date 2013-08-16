![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)


#Movie App

Our client RetFlix wants BEWDiful students to develop an app for them. 

They want an application that allows visitors to:

*	View all movies in the database. 
*	Add a new movie to the database.
*	Edit a movie in the database. 
*	And search for a specific movie.

We will build a Rails app for RetFlix during lesson 9 & 10. Each lesson we will add more functionality to the app. 

Paring is Sharing, and happy coding :)


##Search Movies 
####Time: 15 min

###Task Instructions

*	Create a search box that will search for a term in the title, description and the year released fields.
*	Display results in the search.html.erb pages.


##Lab Time - Create & Edit Movie Forms
####Time: Due Lesson 11

###Task Instructions

*	Update routes file to use :resources

*	Add a link to show just the movie that was clicked

*	Build form for adding a new movie

*	Add validations to the Movie model
	*	All titles and descriptions must be present
	*	Descriptions must be greater than 10 characters
	*	Year released must be a number greater than 0
	*	Rating must be a number between 1 and 5

*	Set messages to show up if a movie doesn't save

Google is your friend!

__Best Practices__

*	Keep code DRY: Create partials so you can reuse code. 
*	Move all complex data queries to the model

_Note:_ This application is due lesson 11. 




	