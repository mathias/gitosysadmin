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

Then navigate to `localhost:PORT` to start administrating gitosis. If you don't pass in a `-p PORT` then gitosysadmin defaults to `localhost:4567`. Default user/password are '`admin`'/'`gitosis`'. Please change these!

## Other ####################################################################

Icons are from [!add this!]()