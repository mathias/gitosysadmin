Gitosysadmin
====

*Gitosysadmin* is a tiny administration panel for Gitosis, written in Sinatra and using Grit.

## Requirements #############################################################

* grit 
* Sinatra
* datamapper 
* do_sqlite3

## Source ###################################################################

The source is available at:

	http://github.com/mathias/gitosysadmin

and cloned with:

	git clone git://github.com/mathias/gitosysadmin
	
## Usage ####################################################################

The users database needs to be created first:

  rake db:migrate
  rake db:testusers

This creates a default `admin` user with password `pw`. More instructions to follow development.

## Credits ##################################################################

Icons are [Mark James's Silk icons](http://www.famfamfam.com/lab/icons/silk/) under a [Creative Commons Attribution 3.0 License](http://creativecommons.org/licenses/by/2.5/).

Inspiration for the login system drawn from  [http://github.com/daddz/sinatra-dm-login/](http://github.com/daddz/sinatra-dm-login/)