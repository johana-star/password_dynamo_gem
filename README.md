=== Password Dynamo - A Gem ===

[↳ Jump to how it works](#HowitWorks)

==== Background ====

Password Dynamo is a command line tool that generates passphrases are difficult to guess but easy to remember.

Strong passwords can be hard to remember. We are often advised to mix numbers, capital letters, and symbols into our passwords to make them harder to guess. Unfortunately, this technique often makes the password significantly harder to remember, but not much harder to guess. There is an easier way to create a memorable password. Select four common words, [like this xkcd explains](http://xkcd.com/936/), and your password will be harder to break and easier to remember.

Password Dynamo was built to assist in the process of selecting four random words. Originally I coded this with the system dictionary, but I found many of the words in it to be archaic and thus, harder to remember. I found a list of the ten thousand most commonly used words in the English language based on their [frequency on television programs](http://en.wiktionary.org/wiki/Wiktionary:Frequency_lists#TV_and_movie_scripts) and used it as my dictionary.

This gem is based off of this [sinatra](http://password-dynamo.heroku.com/) [application](https://github.com/strand/password-dynamo) and was created for my [Ruby Course](http://www.pce.uw.edu/courses/ruby-core-language/downtown-seattle-autumn-2012/?certificate=8545) at the University of Washington.

==== How it works ====

Install the gem with the command `gem install password-dynamo`. Then, at the command prompt, call `dynamo` and Password Dynamo will respond with a four word passphrase. If you call it with the `--complex` or `-c` flag it will respond with a complex passphrase which contains a capital letter, a number, dashes, and no spaces. This password will satisfy the complexity requirements of most sites. For example:

> 22:36 ~/Code: gem install password_dynamo
> Fetching: password_dynamo-0.0.00016.gem (100%)
> Successfully installed password_dynamo-0.0.00016
> 1 gem installed
> Installing ri documentation for password_dynamo-0.0.00016...
> Installing RDoc documentation for password_dynamo-0.0.00016...
> 22:37 ~/Code: dynamo
> chopped ship grill howdy
> 22:37 ~/Code: dynamo -c
> visitation6door's-Formality-relative
> 22:37 ~/Code: dynamo --complex
> messed2cosmo-lawn-Complaint