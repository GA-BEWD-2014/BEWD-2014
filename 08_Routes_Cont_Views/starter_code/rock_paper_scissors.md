![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)


##Rock Paper Scissors

###Time: 60 min

###Activity Type: Pair Programming

####Task Instructions

*	Instructor demo the final app.

* Add the game Rock Paper Scissors to the "Games on Rails App".

*	Create a route that goes from ```/games/rock_paper_scissors/:throw``` to ```games#rock_paper_scissors_play```

*	Use params[:throw] as the user's choice

*	Compare the 2! If the user's throw matches the apps throw, the user wins.

	*	i.e. If a user throws rock ```http://localhost:3000/games/rock_paper_scissors/rock``` and the app throws rock, the player wins! (Yes, I know those are not the official rules for RPS).

Bonus: Set the win or lose condition based on the real rules of [Rock Paper Scissors](http://en.wikipedia.org/wiki/Rock-paper-scissors).