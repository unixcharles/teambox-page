Teambox Page
============

This application allow you to pull Pages element from a project on Teambox, and turn them into website, and its also a demo for Teambox API & OAuth2 features.

With this tool, non-technical people you're working with can a website content using Teambox pages, and you can use this app create website out of it. Its designed to deploy on Heroku with MongoDB.


## About 

`Teambox` - [Teambox](http://teambox.com) an [open source](http://github.com/teambox/teamobx) collaborative project management software.

`Pages` - Pages are wiki-like element in [Teambox](http://teambox.com).

## How to use it

    - Point a domain to your app
    - Login with your Teambox account
    - Select a project and pull pages
    - Create routes that point to Teambox pages
    - Edit your template with mustache

* Each domain is considered as a website. 

## Getting started

    git clone git://github.com/unixcharles/teambox-page.git
    cd teambox-page
    heroku create your-site-name --stack bamboo-mri-1.9.2
    heroku addons:add mongohq:free

You also need to add your Teambox OAuth key & secret token. 
You can register new application in your account setting on Teambox, the callback URL should be something like `http://YOUR-DOMAIN/auth/teambox/callback`.

    heroku config:add TEAMBOX_KEY=XXXXX TEAMBOX_SECRET=XXXXX COOKIE_SECRET=XXXXX

You need to add a list of authorized user, teambox username, comma separated.

    heroku config:add TEAMBOX_ADMINISTRATOR=charles,pablo,jordi

And push

    git push heroku master

Pointing any domain to the app will automatically scope into a different website.