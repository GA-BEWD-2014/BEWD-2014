Mac Users 

	Get an Apple ID = You should already have one. 

1.	Xcode installed? 
	Go to step 2

	Xcode not installed? 


	Go to: 

	> https://developer.apple.com/downloads/index.action
	
	Log in with your Apple ID and password :- Same as iTunes.

	Install Command Line Tools for your operating system.

	Check install: 

	> $ gcc --version

	Should see: 

2.	Install homebrew: from terminal do:

	> $ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

	After install is complete:

	> $ brew doctor

	If you get one of the following errors:

	Warning: Experimental support for using Xcode without the "Command Line Tools" 

	> Go back to step 1

3.	Install Git

	$ brew update
	$ brew install git

	Check install is 

	$ which git

	should get /use/local/bin/git

4.	Configure Git with your Name and Email

	Make sure you use the same email address for Git, GitHub, and Heroku.

5.	Install RVM with Ruby 2.0.0

	>	$ \curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable

	This will take a few minutes, and once it’s done, quit and relaunch Terminal, then run this command:

	>	$ type rvm | head -1

	If you get rvm is a function, that means RVM was successfully installed. 

	To make sure the latest versions of RVM, Ruby and Rails were installed, run the commands below:

	For RVM

	>	$ rvm -v
		You should get rvm 2.0.0 or higher.

	For Ruby


	>	$ ruby -v
		You should get ruby 2.0.0p0 or higher.

	For Rails

	>	$ rails -v
	You should get Rails 3.2.13 or higher.


Windows Users:

	Ruby Installer:
		The install on Windows is actually very with the bundle from rubyinstaller.org; Just be sure to grab the 1.9.3 version, as that will be the version we will be using in class. This will set up your environment and you can start running ruby files right away. Rails will be just a matter of install the rails gem

		http://railsinstaller.org/

	Extra command line tools: 
		We will be using the command line a lot here. On Windows I also like to install gow. Gow is a bunch of unix command line tools ported to Windows. It will make it easy to follow in class with the same commands as your Mac buddies. https://github.com/bmatzelle/gow/wiki

