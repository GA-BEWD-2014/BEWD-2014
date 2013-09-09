![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

##Games On Rails

####Time: 120 min

| | |
| ------------- |:-------------|
| __Topics__ |Routes, Controllers, Views, Params|
| __Learning Objectives__ | Define the purpose of routes.rb <br> Describe flow of control in a Rails app.<br> Explain the use of params|

####App Description

Games on Rails is a web application with two games

__Secret Number__

*	Users click a number between 1 and 10. The controller validates the guess and renders the win or lose view.

__Rock Paper Scissors__

*	Students add this game during lab time. The controller picks a random throw and if it matches the users throw it renders a winning message (otherwise, it shows a tie or loss message).


####Key Teaching Points

This application is a game center with two games, Secret Number and Rock Paper Scissors. Students should be able to see the example from secret number and implement the rest of Rock Paper Scissors.

Each game further explains the use of Routes Views and Controllers:

*	__Secret Number__
	*	Demonstrates how views can link to a path and pass param to the controller.
  *	Shows that logic in the controller can render a specific view


