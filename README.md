# Jquery::Timepicker::Addon::Rails

This is [jquery-ui-timepicker-addon.js](https://github.com/trentrichardson/jQuery-Timepicker-Addon) GEMified for the Rails >= 3.1 asset pipeline through the following:

	bundle gem jquery-timepicker-addon-rails
	cd jquery-timepicker-addon-rails
	mkdir -p vendor/assets/javascripts
	mkdir -p vendor/assets/stylesheets
	curl https://github.com/trentrichardson/jQuery-Timepicker-Addon/blob/master/jquery-ui-timepicker-addon.js -o -o vendor/assets/javascripts/jquery-ui-timepicker-addon.js
	curl https://github.com/trentrichardson/jQuery-Timepicker-Addon/blob/master/jquery-ui-timepicker-addon.css -o vendor/assets/stylesheets/jquery-ui-timepicker-addon.css
	echo "" >> README.md; echo "# jquery-ui-timepicker-addon.js appended README #" >> README.md; echo "" >> README.md
	curl https://github.com/trentrichardson/jQuery-Timepicker-Addon/blob/master/README.md >> README.md
	git add .
	git commit -am "jquery-timepicker-addon-rails"
	git remote add origin https://github.com/vanetten/jquery-timepicker-addon-rails.git
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

	//= require jquery-ui-timepicker-addon.js

Add to **application.css**

	*= require jquery-ui-timepicker-addon.css

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

  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>jQuery-Timepicker-Addon/README.md at master · trentrichardson/jQuery-Timepicker-Addon · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon-precomposed" sizes="57x57" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="QcHc8AIuUSNgabP5grAWMOa+WnoMFX3sIv/R+ep5R50=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-caab4d8f99b402cba65919a8a02e4ee856816e06.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-2f6b52ce3884d9a32c2dc1fd41266c20de7aa966.css" media="screen" rel="stylesheet" type="text/css" />
    


        <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-d61440caec5d2210a2242b084cdb2bc6597e00b7.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-e63e3cd4f81a90d65e10c31aa99588f78d242aa9.js" type="text/javascript"></script>
      

        <link rel='permalink' href='/trentrichardson/jQuery-Timepicker-Addon/blob/e752ef7f4564d2c2e47a763a5602817f049e494b/README.md'>
    <meta property="og:title" content="jQuery-Timepicker-Addon"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/trentrichardson/jQuery-Timepicker-Addon"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/ab4c8036b1eb49d51feac4ab23975c91?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="Adds a timepicker to jQueryUI Datepicker. Contribute to jQuery-Timepicker-Addon development by creating an account on GitHub."/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="trentrichardson/jQuery-Timepicker-Addon"/>

    <meta name="description" content="Adds a timepicker to jQueryUI Datepicker. Contribute to jQuery-Timepicker-Addon development by creating an account on GitHub." />

  <link href="https://github.com/trentrichardson/jQuery-Timepicker-Addon/commits/master.atom" rel="alternate" title="Recent Commits to jQuery-Timepicker-Addon:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob  vis-public env-production  ">
    <div id="wrapper">

      

      

      

      


        <div class="header header-logged-out">
          <div class="container clearfix">

            <a class="header-logo-wordmark" href="https://github.com/">
              <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1359500886" />
              <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1359500886" />
            </a>

              
<ul class="top-nav">
    <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
  <li class="search"><a href="https://github.com/search">Search</a></li>
  <li class="features"><a href="https://github.com/features">Features</a></li>
    <li class="blog"><a href="https://github.com/blog">Blog</a></li>
</ul>


            <div class="header-actions">
                <a class="button primary" href="https://github.com/signup">Sign up for free</a>
              <a class="button" href="https://github.com/login?return_to=%2Ftrentrichardson%2FjQuery-Timepicker-Addon%2Fblob%2Fmaster%2FREADME.md">Sign in</a>
            </div>

          </div>
        </div>


      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu">
          <div class="container">
            <div class="title-actions-bar">
              


<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Ftrentrichardson%2FjQuery-Timepicker-Addon"
        class="minibutton js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="mini-icon mini-icon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/trentrichardson/jQuery-Timepicker-Addon/stargazers">
        1,346
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Ftrentrichardson%2FjQuery-Timepicker-Addon"
        class="minibutton js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="mini-icon mini-icon-fork"></span>Fork
      </a>
      <a href="/trentrichardson/jQuery-Timepicker-Addon/network" class="social-count">
        367
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/trentrichardson" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">trentrichardson</span>
                  </a></span> /
                <strong><a href="/trentrichardson/jQuery-Timepicker-Addon" class="js-current-repository">jQuery-Timepicker-Addon</a></strong>
              </h1>
            </div>

            

  <ul class="tabs">
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon/network" highlight="repo_network">Network</a></li>
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>0</span></a></li>

      <li><a href="/trentrichardson/jQuery-Timepicker-Addon/issues" highlight="repo_issues">Issues <span class='counter'>206</span></a></li>



    <li><a href="/trentrichardson/jQuery-Timepicker-Addon/graphs" highlight="repo_graphsrepo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/trentrichardson/jQuery-Timepicker-Addon/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter ">21</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="mini-icon mini-icon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container js-select-menu-pane">

        <div class="select-menu-modal js-select-menu-pane">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="mini-icon mini-icon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-select-menu-text-filter js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div> <!-- /.select-menu-text-filter -->
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-filter="branches" class="js-select-menu-tab selected">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list js-filter-tab js-filter-branches css-truncate" data-filterable-for="commitish-filter-field" data-filterable-type="substring">



              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/dev/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="dev" rel="nofollow" title="dev">dev</a>
              </div> <!-- /.select-menu-item -->

              <div class="select-menu-item js-navigation-item js-navigation-target selected">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/master/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
              </div> <!-- /.select-menu-item -->

              <div class="select-menu-no-results js-not-filterable">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list js-filter-tab js-filter-tags css-truncate" data-filterable-for="commitish-filter-field" data-filterable-type="substring" style="display:none;">

              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.2/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.2" rel="nofollow" title="v1.2">v1.2</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.1.2/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.2" rel="nofollow" title="v1.1.2">v1.1.2</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.1.1/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.1" rel="nofollow" title="v1.1.1">v1.1.1</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.1.0/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.1.0" rel="nofollow" title="v1.1.0">v1.1.0</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.5/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.5" rel="nofollow" title="v1.0.5">v1.0.5</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.4/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.4" rel="nofollow" title="v1.0.4">v1.0.4</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.3/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.3" rel="nofollow" title="v1.0.3">v1.0.3</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.2/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.2" rel="nofollow" title="v1.0.2">v1.0.2</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.1/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.1" rel="nofollow" title="v1.0.1">v1.0.1</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v1.0.0/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v1.0.0" rel="nofollow" title="v1.0.0">v1.0.0</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.9/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.9" rel="nofollow" title="v0.9.9">v0.9.9</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.8/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.8" rel="nofollow" title="v0.9.8">v0.9.8</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.7/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.7" rel="nofollow" title="v0.9.7">v0.9.7</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.6/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.6" rel="nofollow" title="v0.9.6">v0.9.6</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.5/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.5" rel="nofollow" title="v0.9.5">v0.9.5</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.4/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.4" rel="nofollow" title="v0.9.4">v0.9.4</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.3/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.3" rel="nofollow" title="v0.9.3">v0.9.3</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.2/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.2" rel="nofollow" title="v0.9.2">v0.9.2</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9.1/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9.1" rel="nofollow" title="v0.9.1">v0.9.1</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.9/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.9" rel="nofollow" title="v0.9">v0.9</a>

              </div> <!-- /.select-menu-item -->
              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-checkmark mini-icon mini-icon-confirm"></span>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blob/v0.8/README.md" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v0.8" rel="nofollow" title="v0.8">v0.8</a>

              </div> <!-- /.select-menu-item -->

            <div class="select-menu-no-results js-not-filterable">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/trentrichardson/jQuery-Timepicker-Addon/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">2</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:fdba1775153f07de89b96c88a0f28af2 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:fdba1775153f07de89b96c88a0f28af2 -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/trentrichardson/jQuery-Timepicker-Addon" class="js-slide-to" data-direction="back" itemscope="url"><span itemprop="title">jQuery-Timepicker-Addon</span></a></span></span> / <strong class="final-path">README.md</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="README.md" data-copied-hint="copied!" title="copy to clipboard"><span class="mini-icon mini-icon-clipboard"></span></span>
        </div>

      <a href="/trentrichardson/jQuery-Timepicker-Addon/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/ab4c8036b1eb49d51feac4ab23975c91?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/trentrichardson" rel="author">trentrichardson</a></span>
    <time class="js-relative-date" datetime="2012-09-09T06:54:06-07:00" title="2012-09-09 06:54:06">September 09, 2012</time>
    <div class="commit-title">
        <a href="/trentrichardson/jQuery-Timepicker-Addon/commit/cfb29537bea1eb1f962bc8928d2de9968edf0148" class="message">Update readme</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong> contributor</a></p>
      
    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/ab4c8036b1eb49d51feac4ab23975c91?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/trentrichardson">trentrichardson</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/trentrichardson/jQuery-Timepicker-Addon/blob/e752ef7f4564d2c2e47a763a5602817f049e494b/README.md" data-title="jQuery-Timepicker-Addon/README.md at master · trentrichardson/jQuery-Timepicker-Addon · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">file</span>
                  <span>20 lines (17 sloc)</span>
                <span>0.745 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/trentrichardson/jQuery-Timepicker-Addon/raw/master/README.md" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/trentrichardson/jQuery-Timepicker-Addon/blame/master/README.md" class="button minibutton ">Blame</a>
                  <a href="/trentrichardson/jQuery-Timepicker-Addon/commits/master/README.md" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
              
  <div id="readme" class="blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="mainContentOfPage"><h1>
<a name="jquery-timepicker-addon" class="anchor" href="#jquery-timepicker-addon"><span class="mini-icon mini-icon-link"></span></a>jQuery Timepicker Addon</h1>

<h2>
<a name="about" class="anchor" href="#about"><span class="mini-icon mini-icon-link"></span></a>About</h2>

<ul>
<li>Author: <a href="http://trentrichardson.com">Trent Richardson</a>
</li>
<li>Documentation: <a href="http://trentrichardson.com/examples/timepicker/">http://trentrichardson.com/examples/timepicker/</a>
</li>
<li>Twitter: <a href="http://twitter.com/practicalweb">@practicalweb</a>
</li>
</ul><h2>
<a name="use" class="anchor" href="#use"><span class="mini-icon mini-icon-link"></span></a>Use</h2>

<ul>
<li>To use this plugin you must include jQuery and jQuery UI with datepicker and slider</li>
<li>Include timepicker-addon script</li>
<li>now use timepicker with $('#selector').datetimepicker() or $('#selector').timepicker()</li>
</ul><h2>
<a name="contributing-code---please-read" class="anchor" href="#contributing-code---please-read"><span class="mini-icon mini-icon-link"></span></a>Contributing Code - Please Read!</h2>

<ul>
<li>All code contributions and bug reports are much appreciated.</li>
<li>Please be sure to apply your fixes to the "dev" branch.</li>
<li>Also note tabs are appreciated over spaces.</li>
</ul></article>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1359500886" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.05679s from fe19.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/trentrichardson/jQuery-Timepicker-Addon/suggestions/commit/e752ef7f4564d2c2e47a763a5602817f049e494b">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-icon mega-icon-normalscreen"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="mini-icon mini-icon-brightness"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.05734' data-host='fe19'></span>
    
  </body>
</html>

