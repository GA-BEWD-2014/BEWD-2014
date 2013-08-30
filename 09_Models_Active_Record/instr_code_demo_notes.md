![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

#Shirt Management App

###App Description
 
Shirt Management is an incremental code along. This app will be used in lesson 9 & 10. 

Shirt Management App is a Rails application that stores information about T-Shirts. This app was built for T-Shirt enthusiast.

Here are the user stories for the app. 

*	As a visitor, I want to view all T-shirts in the database. 
*	As a visitor, I want to search the database for a specific shirt.
*	As a visitor, I want to add T-Shirts to the database.
*	As a visitor, I want to edit T-Shirts in the database.


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

	*	Generate migration to add the image attribute. (next lesson we add images to the public folder, and build a view for this app).
	*	Used [seeds.rb](seeds.rb) to populate the database. (We gave you the seeds file so it is easy to share with students on GitHub)

3.	__Active Record__

	*	Demonstrate active record methods in the rails console (CRUD). Most important is demonstrating ```.all```. Students will need it to complete the exercises/homework.
		

This app will serve as a reference for students to complete the exercise Movie. We are intentionally not creating a view or controller in this code along. In the Movie exercise, students add to their view, and display all movies in the database. Lesson 10 we will add the views and students who are struggling can use that version to complete their homework.
