![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)


#[Shirt Management App](https://github.com/TheBEWDifulPeople/ShirtsAppByLesson/branches)

###App Description
 
Shirt Management is an incremental code along. This app will be used in lesson 9 - 10. 

It is a Rails application that stores T-Shirts. 

Here are the user stories for the app. 

*	As a user, I want to view all T-shirts stored in the database. 
*	As a user, I want to search the database for a specific shirt.
*	As a user, I want to add T-Shirts to the database.
*	As a user, I want to edit T-Shirts in the database.

The [app](https://github.com/TheBEWDifulPeople/ShirtsAppByLesson/branches) is hosted on GitHub. Each branch is the final state at the end of the 
lesson. The master branch is the completed app styled w/ Twitter Bootstrap

In lesson 10 it would be long for students to sit through building the entire app all at once, so we've broken the app into 3 code alongs, see below. 

## Review 
####Time: 20 min

| | |
| ------------- |:-------------|
| __Topics__ |views, controllers, public folder| 


####Key Teaching Points

*	Utilize active record method .all to display all shirts in the index.html.erb view.
	*	We add a Shirt controller and view to the shirt management app during this code along. This is meant to help those that are stuggling with the [Movie App](../09_models_active_record/exercises) homework assignment.


__Here is our suggestion on how to incrementally build:__

1.	__Routes__
	*	 Add routes to index page.

2.	__Controller__
	*	Manually create controller with index action

3.	__Views__
	*	Show all shirts in index.html.erb. 
	*	Add [images](ShirtsAppPics.zip) to public folder. This is to give more color to the app.
		

This app will serve as a reference for students to complete the exercise Movie. 
We will add forms in the next code along (see below) 



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
2.	Set the route for our search functionality
3.	Create a search action in our controller
4.	Get the results from our model
5.	Create a method on the Model to get our records passed in from search box
6.	Display search results in the search.html.erb
6.	Look for duplication in our view and use partials to package reusable bits of markup.


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

1.	Update routes file to use :resources keyword2
2.	Build show page for Shirts, detailing just one shirt
3.	Build new page, for creating a new shirt in the system
4.	Validation: Deal with validations
	*	If a record doesn't save, inform the user of any errors
	*	Give them a chance to fix their error
5.	Build page for editting a shirt
6.	Add link for deleting a shirt
