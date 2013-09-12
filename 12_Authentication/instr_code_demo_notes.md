![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

#Rewsly
###App Description


News aggregator app.

*	The front page welcomes visitors "Welcome to Rewsly" and list all titles in the stories table.
*	Visitors can view more details by clicking on the title from the front page.
*	Visitors can search for a specific story by title or category from the front page.
*	Visitors can add stories to the database if all fields are present.
	*	Prevent visitors from saving a record if it has errors.


This app is a continuation from the previous class.


## Review
####Time: 15 min

| | |
| ------------- |:-------------|
| __Topics__ |views, controllers, forms, models|


####Key Teaching Points

*	To save time we suggest providing the solution file to students and walking them through the app. This code along also serves as a review.



##Adding Devise
####Time: 30 min

| | |
| ------------- |:-------------|
| __Topics__ |devise, gems, documentation|


####Key Teaching Points

*	Due to limited time, we are not teaching authenticaion from scratch. We want students to understand at a highlevel how authentication works.


*	Students should learn how to read GEM documentation. In addition to teaching how to use Devise, show students how to read and utilize documentation on GitHub.


__Here is our suggestion on how to incrementally build__

1.	Add Devise gem to the app
2.	Change "sign_in" to "login", and "sign_out" to "logout"
3.	Prevent unauthorized users from adding stories.
	*	Visitors can view and search for stories.





