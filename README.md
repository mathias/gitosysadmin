Gitosysadmin
====

*Gitosysadmin* is a tiny administration panel for Gitosis, written in Sinatra and using Grit.

## Requirements #############################################################

* grit 
* Sinatra

## Source ###################################################################

The source is available at:

	http://github.com/mathias/gitosysadmin

and cloned with:

	git clone git://github.com/mathias/gitosysadmin
	
## Usage ####################################################################

Currently, just clone the repo and run it from the top level of your checked-out gitosos-admin repo.

	$ git clone git://github.com/mathias/gitosysadmin
	$ cd gitosis-admin
	$ ruby ../gitosysadmin/gitosysadmin.rb -p PORT

Then navigate to `localhost:PORT` to start administrating gitosis. If you don't pass in a `-p PORT` then gitosysadmin defaults to `localhost:4567`. Default user/password are '`admin`'/'`gitosis`'. Please change these at the top of `gitosysadmin.rb`!

Your shell user must also be able to write to the gitosis-admin repo. Use the web interface to push the gitosis-admin repo to the server.

## Credits ##################################################################

Icons are [Mark James's Silk icons](http://www.famfamfam.com/lab/icons/silk/) under a [Creative Commons Attribution 3.0 License](http://creativecommons.org/licenses/by/2.5/).

Inspiration for the login system drawn from  [http://github.com/daddz/sinatra-dm-login/](http://github.com/daddz/sinatra-dm-login/)