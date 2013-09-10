![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

#Shirt Management App
###App Description

Shirt Management is an incremental code along. This app will be used in lesson 9 & 10.

Shirt Management App is a Rails application that stores information about T-Shirts. This app was built for T-shirt enthusiast.

Here are the user stories for the app.

*	As a visitor, I want to view all T-shirts in the database.
*	As a visitor, I want to search the database for a specific shirt.
*	As a visitor, I want to add T-Shirts to the database.
*	As a visitor, I want to edit T-Shirts in the database.

In lesson 10 it would be long for students to sit through building the entire app all at once, so we've broken the app into 3 code alongs, see below.

## Review
####Time: 20 min

| | |
| ------------- |:-------------|
| __Topics__ |views, controllers, public folder|


####Key Teaching Points

*	Implement active record method ```.all``` in the controller to display all shirts in the index.html.erb view.
*	We add a Shirt controller and view to the shirt management app during this code along. This is meant to help those that are stuggling with the [Movie App](../09_models_active_record/exercises) homework assignment.


__Here is our suggestion on how to incrementally build:__

1.	__Routes__
	*	 Add routes to index page.

2.	__Controller__
	*	Manually create controller with index action. (This will help students understand rails the naming convention).

3.	__Views__
	*	Show all shirts in index.html.erb.
	*	Add [images](ShirtsAppPics.zip) to public folder. This is to give more color to the app.


This app will serve as a reference for students to complete the exercise Movie.
We will add forms in the next code along (see below).



## Search Forms
####Time: 20 min

| | |
| ------------- |:-------------|
| __Topics__ |Search, where, like, form tags, partials|


####Key Teaching Points

*	Implement a search form
*	Define why all complex query code should be in the model class
*	Refactor code to highlight when and where to use partials


__Here is our suggestion on how to incrementally build__


1.	Create a search box in the index.html.erb view
2.	Extend the index action to handle a search param
3.	Get the results from our model
4.	Create a method on the Model to get our records passed in from search box
5.	Display search results in the search.html.erb
6.	Look for duplication in our views and use partials to package reusable bits of markup.


## Create & Edit Forms
####Time: 60 min

| | |
| ------------- |:-------------|
| __Topics__ |resources, show page, new page, edit page |


####Key Teaching Points

*	Utilize resources to create routes for your application
*	Implement forms to create and edit instances in a database
*	Apply validations to prevent saving incorrect data


__Here is our suggestion on how to incrementally build__

1.	Update routes file to use :resources keyword
2.	Build show page for Shirts, detailing just one shirt
3.	Build new page, for creating a new shirt in the system
4.	Validation: Deal with validations
	*	If a record doesn't save, inform the user of any errors
	*	Give them a chance to fix their error
5.	Build page for editting a shirt
6.	Add link for deleting a shirt
