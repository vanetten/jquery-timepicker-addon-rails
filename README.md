# Jquery::Timepicker::Addon::Rails

This is [jquery-ui-timepicker-addon.js](https://github.com/trentrichardson/jQuery-Timepicker-Addon) GEMified for the Rails >= 3.1 asset pipeline through the following:

	bundle gem jquery-timepicker-addon-rails
	cd jquery-timepicker-addon-rails
	mkdir -p vendor/assets/javascripts
	mkdir -p vendor/assets/stylesheets
	curl https://raw.github.com/trentrichardson/jQuery-Timepicker-Addon/master/jquery-ui-timepicker-addon.js -o vendor/assets/javascripts/jquery-ui-timepicker-addon.js
	curl https://raw.github.com/trentrichardson/jQuery-Timepicker-Addon/master/jquery-ui-timepicker-addon.css -o vendor/assets/stylesheets/jquery-ui-timepicker-addon.css
	echo "" >> README.md; echo "# jquery-ui-timepicker-addon.js appended README #" >> README.md; echo "" >> README.md
	curl https://raw.github.com/trentrichardson/jQuery-Timepicker-Addon/master/README.md >> README.md
	git add .
	git commit -am "jquery-timepicker-addon-rails"
	git remote add origin git@github.com:vanetten/jquery-timepicker-addon-rails.git
	git push -u origin master

* modify **lib/jquery-timepicker-addon-rails/version.rb** to match jquery-ui-timepicker-addon.js version

		VERSION = "1.2.1"

* modify **lib/jquery-timepicker-addon-rails.rb** to subclass Rails::Engine

		class Engine < ::Rails::Engine
		end

* modify **jquery-timepicker-addon-rails.gemspec**

		gem.description   = "This gem provides jquery-ui-timepicker-addon.js and jquery-ui-timepicker-addon.css for your Rails 3 application."
		gem.summary       = "Use jquery-ui-timepicker-addon with Rails 3"
		gem.homepage      = "http://rubygems.org/gems/jquery-timepicker-addon-rails"
		gem.files = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
		gem.add_dependency "railties", "~> 3.1"

* build

		rake build

* release

		rake release

## Installation

Add this line to your application's Gemfile:

    gem 'jquery-timepicker-addon-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery-timepicker-addon-rails

## Usage

Add to **application.js**

	//= require jquery-ui-timepicker-addon

Add to **application.css**

	*= require jquery-ui-timepicker-addon

Example addition to **your.js.coffee**

	jQuery ->
	  $("input.datetimepicker").each (i) ->
	    $(this).datetimepicker
	      dateFormat: "yy-mm-dd"
	      timeFormat: "h:mm TT"
	      altFieldTimeOnly: false
	      altFormat: "yy-mm-dd"
	      altTimeFormat: "HH:mm"
	      altField: $(this).next()

Example simple_form input extension **app/inputs/datetimepicker_input.rb**

	class DatetimepickerInput < SimpleForm::Inputs::Base
	  def input
	    @builder.text_field(attribute_name, input_html_options)
	  end
	end

Example simple_form **_form.html.erb**

	<%= f.input :starts_at, :as => :datetimepicker, :input_html => {:value => @event.starts_at.strftime("%Y-%m-%d %l:%M %p")} %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# jquery-ui-timepicker-addon.js appended README #

jQuery Timepicker Addon
=======================

About
-----
- Author: [Trent Richardson](http://trentrichardson.com)
- Documentation: [http://trentrichardson.com/examples/timepicker/](http://trentrichardson.com/examples/timepicker/)
- Twitter: [@practicalweb](http://twitter.com/practicalweb)

Use
---
- To use this plugin you must include jQuery and jQuery UI with datepicker and slider
- Include timepicker-addon script
- now use timepicker with $('#selector').datetimepicker() or $('#selector').timepicker()

Contributing Code - Please Read!
--------------------------------
- All code contributions and bug reports are much appreciated.
- Please be sure to apply your fixes to the "dev" branch.
- Also note tabs are appreciated over spaces.