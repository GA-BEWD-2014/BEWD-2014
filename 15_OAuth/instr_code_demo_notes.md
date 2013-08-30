![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

# Movie App
#### App Description


This is a continuation from the movie app we created in [lesson 10 - Forms](../10_Forms/instr_exercise_notes.md) 


###Sign Up Application w/ Twitter 
####Time: 30 min

| | |
| ------------- |:-------------|
| __Topics__ |twitter api documentation, consumer keys. consumer secret| 
| __Objective__ | Teach students an advanced topic: OAuth. Specifically reading authentication.| 


####Key Teaching Points

*	We want to teach students that they require authentication to use a third party API. Mention other third party authentication you have worked with in the past, and the steps you had to take to get set up.

###Task Instructions

* 	As a class got to ```https://dev.twitter.com/apps/``` and create a new application.


The following instructions are on the slides as well so students can follow the process at their own pace, while you further discuss why sign up is necessary.

*	Go to ```https://dev.twitter.com/apps/``` and create a new application. 
*	For the Website,  put your own blog. It doesn't matter this is a test. Use your Heroku URL if you are using Omni Auth for your final project.
*	For the call back URL, use ```http://127.0.0.1:3000/auth/twitter/callback``` 



##OmniAuth Twitter Gem 
####Time: 90 min

| | |
| ------------- |:-------------|
| __Topics__ |OmniAuth, OAuth| 


####Key Teaching Points

*	Students will not practice adding OmniAuth in an exercise. This is an advanced lesson, and we want to give students the confidence to read documentation and integrate third party APIs and Gems, on their own.
Be sure to reference the Twitter api [documentation](https://dev.twitter.com/docs/api/1.1) for OAuth.


*	_Note:_ We added a review model and associated it to users and movies.
	
	*	A Movie has many reviews
	*	A review belongs to a user

If time permits review associations in this app. Otherwise share code with students; this is meant to be another associations reference for students. 


__Here is our suggestion on how to incrementally build__

1.	Demo third party Twitter authentication
2.	Add omniauth-twitter gem, and setup supporting files
	*	Explain the use of consumer keys and consumer secrets
3.	Create home controller, add link to omniauth friendly url
4.	Add route to handle 'callback'
5.	Add before filters so that only logged in users can add reviews or add a movie.
6.	Add reviews model and associations to user and movie





