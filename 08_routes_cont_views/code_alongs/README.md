![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Code_along_icon_md.png)


##Games On Rails
###Time: 120 min

| | |
| ------------- |:-------------|
| __Topics__ |Routes, Controllers, Views, Params                 | 
| __Learning Objectives__ | Define the purpose of routes.rb <br> Describe flow of control in a Rails app.<br> Explain the use of params| 

###App Description
 
Games on Rails is a web application with three games
  
*	Magic 8 Ball 
*	Secret Number 
*	Rock Paper Scissors (students add this game during lab time)

__Magic 8 Ball__

*	Magic 8 ball takes user's questions from the the URL as params and returns a positive or negative answer.

__Secret Number__

*	Users click a number between 1 and 10. The controller validates the guess and renders the win or lose view.

__Rock Paper Scissors__

See [Exercises](../exercises/)


###Key Teaching Points

This application is a game center with two games, Magic Eight Ball and Secret Number. It was built to demonstrate flow of control in a rails app.

Each game further explains the use of Routes Views and Controllers:

*	__Magic Eight ball__
	*	Introduces how params are passed from the url 
	*	Shows that by default Rails will render views with the same name as the controller action   
	*	Shows the controller can redirect to a specific view / path
	
*	__Secret Number__
	*	Demonstrates how views can link to a path and pass param to the controller.
	*	Shows that logic in the controller can render a specific view
	
*	__Rock Paper Scissors
	*	An exercise completed during lab time. Students practice transfer of skills learned during the code along. We also test their ruby skills with the bonus question by having students write the logic for the game Rock Paper Scissors.
