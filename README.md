# Ruby, why do you hate me?

# SUPER SPECIAL NOTE

## YOU SHOULD USE THE 'backports' GEM INSTEAD. -Jordan

# END SUPER SPECIAL NOTE

Ruby core api changes incompatibly about 3 times a week. Just kidding, maybe
once a week.

Sarcasm aside, shit needs to work. Newer code uses newer ruby apis without
knowing it. I support old rubies, so I need newer api features working in older
rubies.

Folks on CentOS 5 get Ruby 1.8.5 or 1.8.6, and that lacks things like
String#start_with? and Regexp#union... etc. I SUPPORT YOU, FRIEND.


# Examples:

    # Example that fails in ruby 1.8.7 and below:
    % ruby -e 'p RUBY_VERSION, [1,2,3].rotate'
    -e:1: undefined method `rotate' for [1, 2, 3]:Array (NoMethodError)

    # And works now.
    % ruby -rbackport-bij -e 'p RUBY_VERSION, [1,2,3].rotate'
    "1.8.7"
    [2, 3, 1]

## Similar projects, maybe.

* <https://github.com/blackwinter/ruby-backports>
* <https://github.com/marcandre/backports>

