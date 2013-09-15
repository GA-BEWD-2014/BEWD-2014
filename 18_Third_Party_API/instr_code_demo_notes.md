![Code Demo Notes](../assets/ICL_icons/instr_code_demo.png)

#Twillio App

####App Description

A phone book application that can send sms messages from your Rails app.

This is a project used in web development immersive, that we are offering to BEWD students. It has been updated to be rails 4 compliant.


###Key Teaching Points

*	Like many of our lessons, we want to give students the confidence to read api documentation and implement third party data and services.

*	Reference the API and tackle the application as if you were approaching this projects for the first time. How would you start? How would you deal with troubleshooting? Knowing how to answer these questions will give students confidence to continue coding beyond this course.

*	Explain the purpose of ENV[‘TW_SID’], ENV[‘TW_TOKEN’] and ENV['TW_SOURCE_NUMBER'].


####Our Suggested Task Instructions

*	Have all students go to [Twilio](https://www.twilio.com/user/account) and create a free trial account.
	*	Trial accounts allow a few free text.
	*	Sending text messages costs a penny per text message and the minimum account is $20 and includes a phone number.

*	Create a new lab with a Postgres or sql lite database.

*	Update the database.yml file and the Gemfile.

	*	Add the twilio-ruby gem. Run bundle.

*	Create the user model with name, phone

*	Add some data to the seeds.rb file.

		User.delete_all

		User.create(:name => 'Bob', :phone => '+12125551212')
		User.create(:name => 'Sam', :phone => '+12125551213')
		User.create(:name => 'Joe', :phone => '+12125551214')

*	Add a page that lists all users and set this page to be your homepage, add an input box and a button. The input box is for the text message content and submitting it will send the text message. The form will post to /users/sendtxt.


*	Create the send method in the users controller. Add raise params.inspect and check out what is going on.


*	In the controller, set a name variable equal to params[:name] and a body variable equal to params[:body]. Then use the name to look up the phone number. (.where returns an array, so we used the first one).


*	Go to Twilio > Dashboard. At the top, there are two numbers there that you want to keep to yourself, the Account SID and the Auth Token. Add token and SID to app.

	export TW_SID="<Twilio Account SID>"
	export TW_TOKEN="<Twilio Auth Token>"
	export TW_SOURCE_NUMBER="<Twilio Number>" (e.g. export TW_SOURCE_NUMBER="+16503535688")

*	Reload your terminal environment and test.

		echo $TW_SID
		echo $TW_TOKEN
		echo $TW_SOURCE_NUMBER

*	Go into your seeds.rb and add a user with a real phone number.






