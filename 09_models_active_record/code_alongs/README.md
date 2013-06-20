![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)


#[Shirt Management App](https://github.com/TheBEWDifulPeople/ShirtsAppByLesson/branches)

###App Description
 
Shirt Management is an incremental code along. This app will be used in lesson 9 - 10. 

It is a Rails application that stores T-Shirts. 

Here are the user stories for the app. 

*	As a user, I want to view all T-shirts in the database. 
*	As a user, I want to search the database for a specific shirt.
*	As a user, I want to add T-Shirts to the database.
*	As a user, I want to edit T-Shirts in the database.

The [app](https://github.com/TheBEWDifulPeople/ShirtsAppByLesson/branches) is hosted on GitHub. Each branch is the final state at the end of the 
lesson. The master branch is the completed app styled w/ Twitter Bootstrap


##Adding Shirt Model
####Time: 40 min

| | |
| ------------- |:-------------|
| __Topics__ |models, migrations, seed files, active record| 
| __Learning Objectives__ | Create a Rails application with a model.| 




###Key Teaching Points

During this lesson we add a Shirt model and populate it with a seeds file.

Below is our suggestion on how to incrementally build this app during lesson 9.

1.	__Generate Model__

	*	Added shirts model with the following attributes: name, description.

2.	__Migrations__

	*	Generate migration to add the image field.
	*	Used [seeds.rb](seeds.rb) to populate the database.

3.	__Active Record__

	*	Demonstrate active record in the rails console (CRUD).
		

This app will serve as a reference for students to complete the exercise Movie. We are intentionally not creating a view or controller in this code along. In the Movie exercise, students add to their view, and display all movies in the database. Lesson 10 we will add the views and students can use this to complete their homework.
