![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

## Twitter Associations  
####Time: 40 min

| | |
| ------------- |:-------------|
| __Topics__ |associations diagrams | 
| __Objective__| Understanding databases and table associations|   

####Key Teaching Points

*	We want to introduce the following associations:
	*	__belongs_to__
	*	__has_many__
	*	__has_many :through__

Before we get into the code and syntax, we want to show students how to identify model associations with a familiar application.  For students, its easier to start with a familiar application rather than finding associations for an application they do not know. We are using Twitter if this is not popular in your market, feel free to change.


####Task Instructions

Diagram parts of Twitter's functionality. During the exercise students will diagram parts of Netflix. 

Here is our suggested example: 

	Users can post many tweets.

	Tweets belong to a user.

	Tweets have many hashtags through hash_tagging.

1.	Ask students to identify what models are needed to build a Twitter clone.

2.	Ask students what attributes those models would have.

3.	Introduce the concept of relational databases.

4.	As you explain model associations, use the white board to draw a diagram of how Twitter models are associated. No official diagram rules needed; do what feels comfortable.

5.	Add primary and foreign keys to the diagram.

Students will use this diagram and replicate the same steps to outline Netflix relational database schema.

## Rewsly Associations  
####Time: 60 min

| | |
| ------------- |:-------------|
| __Topics__ |active record associations, rails console | 


####Key Teaching Points

_Note_: Due to time constraints in the pilot session of BEWD we removed nested forms. Students can find additional reading in the resources section.

*	Provide tricks you use on the job to identify how models should be associated.
*	Spend some time in the console showcasing some of the rails magic that comes along with associations. 

__Here is our suggestion on how to incrementally build__

*	Start with this version of [Rewsly](../12_Authentication/code_alongs)
*	To help visualize what you will be building, demo the completed app before the code along.
*	As a class identify what models are missing.
*	Add comments model.
*	Code associations.
*	Use rails console create stories and comments. Show students how they can now use active record methods to find who posted a comment or story.
*	Update views 
	*	We use exception handling to throw nil user_id error cause by "@story.comments.new" in the stories controller show action.



