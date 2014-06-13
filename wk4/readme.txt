Paul's awesome SMS charade game Readme

Created: June 12, 2014
Last updated: June 12, 2014


Premise of the game:
	- In a typical game of charades, the organizer has to (a) choose the options for each player, and (b) find a way to distribute the assignments (usually on pieces of paper)
	- My game solves both problems: the program will randomly assign a charade to each player, and sends the assignment via SMS
	- As an added bonus, the game includes a number of pre-populated categories of charades, so the organizer simply chooses a category, and the system does the rest. This means that the organizer doesn't know everyone else's charade!

Known issues:
	- The biggest known issue is that the random assignment of charades to each player does not protect against duplicate assignments. I didn't have time to figure that one out. So players may have the same assignment...

Desired enhancements:
	- In addition to solving the possibility for overlapping assignments (above), my other goal was to allow the organizer to create a new category of charade assignments, and populate this array with their own choices. This wouldn't be too hard, but again, I ran out of time!

Notes for BEWD grading team:
	- In terms of the API integration, I decided to use the Twilio SMS API library. Super easy, and pretty functional
	- Note that you do need to input a REAL phone number to get the real effect of the game. I have intentionally allowed you to assign the same phone number to multiple users, so that you can test the game without using multiple phone humbers. You'll just get >1 text
	- Other than the obvious issues above, I think there is some spaghetti organization going on here. Specifically, I think "main" includes more game logic than I would have liked. 
	- I'd love macro feedback on how the game might be organized better going forward
