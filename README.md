Gitosysadmin
====

*Gitosysadmin* is a tiny administration panel for Gitosis, written in Sinatra and using Grit. (Gitosysadmin should make it easy to add new groups, repos, and users to Gitosis.)

## Requirements #############################################################

* [ruby-git](http://github.com/schacon/ruby-git) 
* Sinatra
* datamapper 
* do_sqlite3

## Source ###################################################################

The source is available at:

	http://github.com/mathias/gitosysadmin

and cloned with:

	git clone git://github.com/mathias/gitosysadmin
	
## Usage ####################################################################

First, make sure you have `gitosis` up and running on your server. Garry Dolley has a [good guide](http://scie.nti.st/2007/11/14/hosting-git-repositories-the-easy-and-secure-way) to setting up `gitosis`.

The users database needs to be created first:
  
	rake db:migrate
	rake db:testusers



This creates a default `admin` user with password `pw`. More instructions to follow development.

Once logged in, you'll need to clone the `gitosis-admin` repo off your server. Gitosysadmin will keep this repo locally in the dir it was launched from. After logging in, clone the `gitosis-admin` repo in the Clone tab by supplying it with the path to the repo on your server, with a username. If gitosis is running on the same machine as Gitosysadmin, this path probably looks like

	git@localhost:gitosis-admin.git

If you get an error on submitting this, you should double-check the path to the repo on your server.

## Credits ##################################################################

Icons are [Mark James's Silk icons](http://www.famfamfam.com/lab/icons/silk/) under a [Creative Commons Attribution 3.0 License](http://creativecommons.org/licenses/by/2.5/).

Inspiration for the login system drawn from  [http://github.com/daddz/sinatra-dm-login/](http://github.com/daddz/sinatra-dm-login/)