BACK-END WEB DEVELOPMENT
============================

![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")


#Install Git and Ruby

##Mac Users 

Commands that look like ```this``` should be entered into your Terminal
application. It can be found in Applications/Utilities.

1.	__Ensure you have an Apple ID__
	* You should have one from the pre-work, but if not, [create one now](https://appleid.apple.com/cgi-bin/WebObjects/MyAppleId.woa/wa/createAppleId).

2. __Install Command Line Tools__
	* We need to install some command-line tools for OSX, so visit this page: [https://developer.apple.com/downloads](https://developer.apple.com/downloads/index.action)
	* Search for "Command Line Tools" and select the version appropriate for your operating system.
		* If you don't know your OSX version, click the Apple logo on the top left, hit "About this Mac", and see what Version it shows under OSX.
	* Install the command line tools from the downloaded file.

3. __Install Homebrew__
	* Homebrew is a package management library, which basically means it's an OSX app that lets us install other libraries and tools we need.
	* To install it, simply copy and paste this command into your Terminal application: ```ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"```
	* If you have issues, visit the Homebrew install page: [http://mxcl.github.io/homebrew/](http://mxcl.github.io/homebrew/)
	* To learn more about Hombrew, check out its homepage: http://brew.sh/
	* NOTE: *For advanced users only*: If you have a _strong_ desire to use a different package management tool (such as MacPorts, or Fink), you may do so, but note that we may not be able to support you if you encounter any issues with your specific tool. Proceed with caution.
	
4.	__Install git__
	* In order to manage our code effectively, we need a source control management tool. There are a number of options out there, but Git is by far the best one today.
	* We will use Homebrew to install Git. Before we do so, let's update homebrew to get the latest 'recipes' for its available libraries:
		*	```brew update```
	* Now it's install Git:
		*	```brew install git```

5.	__Configure Git with your Name and Email__
	* To ensure that all your interactions with Git are signed with your email and username, follow these guides:
	  	* [https://help.github.com/articles/setting-your-email-in-git](https://help.github.com/articles/setting-your-email-in-git)
  		* [https://help.github.com/articles/setting-your-username-in-git](ttps://help.github.com/articles/setting-your-username-in-git)

6.	__Install RVM with Ruby 2.0.0__
	* OSX comes with Ruby 1.8.7 out of the box. However, for this class we want to use Ruby 2.0.0.
	* RVM is a simple tool that lets you manage which Ruby builds are installed on your machine (you can have multiple ones at the same time!)
	* We will use RVM to install Ruby 2.0.0, and then set it as the default Ruby.
	* To install Ruby 2.0.0 with RVM, run this command:
	  	* ```\curl -L https://get.rvm.io | bash -s stable --ruby```
	* Now set Ruby 2.0.0 as your default Ruby build:
  		* ```rvm use 2.0.0 --default```
  	* *OPTIONAL:* You may also remove Ruby 1.8.7, if you wish:
  		* ```rvm remove ruby-1.8.7```
  	
7.	__Restart Your Terminal__
	* To ensure all the changes you made so far take effect, restart your Terminal app (just quit the app and relaunch it).

8.	__Make sure the latest versions of RVM and Ruby were installed__
	* To verify that you have the latest RVM and Ruby, run the commands below:
		*	For RVM: ```rvm -v``` (you should get rvm 1.22.2 or higher)
		* 	For Ruby: ```ruby -v``` (you should get ruby 2.0.0p247 or higher)

9.	__Congrats! You're all set. Now go build something awesome :)__

##Ubuntu Linux Users

Commands that look like ```this``` should be entered into your Terminal
application.

1. __Open a terminal window__
  * http://askubuntu.com/questions/196212/how-do-you-open-a-command-line

2. __Install git__
  * ```sudo apt-get install build-essential git-core```
  * Set your git name and email:
    * https://help.github.com/articles/setting-your-email-in-git
    * https://help.github.com/articles/setting-your-username-in-git

3. __Install curl__
  * ```sudo apt-get install curl```

4. __Install RVM__
  * ```\curl -L https://get.rvm.io | bash -s stable --ruby```
  * The backslash in font of "curl" is not a typo.
  *	Close and reopen terminal
  * ```rvm use 2.0.0 --default```
	*	Make sure the latest versions of RVM and Ruby were installed, run the commands below:
		*	For RVM
			*	```rvm -v```
				You should get rvm 1.0.0 or higher.
		* 	For Ruby

			*	```ruby -v```
				You should get ruby 2.0.0p0 or higher.

##Windows Users

1. __Install VirtualBox__
  * https://www.virtualbox.org/wiki/Downloads

2. __Download Ubuntu Linux__
  * http://www.ubuntu.com/download/desktop
  * Version 13.04 is probably preferable but 12.04 is also fine.

3. __Create your virtual machine__
  * Open VirtualBox and click the "New" button
  * Enter any name
  * Select "Linux" as the type
  * Select either "Ubuntu" or "Ubuntu (64 bit)" as the version depending on
    which you downloaded.
  * Memory size is the amount of your RAM that will be used to run
    Linux. 1024MB should be more than enough, but if you have a lot of
    RAM you can boost this number. If your machine only has 1GB of RAM
    then 512MB will have to do. If you're not sure, don't worry because
    this value can be changed later.
  * Hard drive - Select "Create a virtual hard drive now" then use the
    "VDI" type and then the "Dynamically allocated" option. Name the
    virtual hard drive file anything and select an amount of hard drive
    space that your computer is capable of supporting. 8GB should be plenty.
  * After clicking "Create", select the new virtual machine you created
    in the left column and press the "Start" button.
  * In the "Select start-up disk" window, select the Ubuntu Linux .iso
    file you downloaded and press start. You can then follow the Ubuntu
    installation instructions.

4. __Setup Ubuntu__
  * Now see the the installation instructions for Ubuntu Linux!

##Happy Coding :)

__You're ready for the first class.__
