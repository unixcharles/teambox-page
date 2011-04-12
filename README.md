Teambox Page
============

This application allow you to pull Pages element from a project on Teambox, and turn them into website, and its also a demo for Teambox API & OAuth2 features.

With this tool, non-technical people build the content of a using Teambox pages, and you can use this app publish it. Its designed to deploy on Heroku with MongoDB.


`Teambox` - [Teambox](http://teambox.com) an [open source](http://github.com/teambox/teamobx) collaborative project management software.

`Pages` - Pages are wiki-like element in [Teambox](http://teambox.com).

## How to use it

    - Point a domain to your app
    - Login with your Teambox account
    - Select a project and pull pages
    - Create routes that point to Teambox pages
    - Edit your template with mustache

Each domain is considered as a different site. 

## Getting started

    git clone git://github.com/unixcharles/teambox-page.git
    cd teambox-page
    heroku create your-site-name --stack bamboo-mri-1.9.2
    heroku addons:add mongohq:free

You also need to add your Teambox OAuth key & secret token. 
Register new application from your account setting on Teambox. 
The callback URL should point to `http://YOUR-DOMAIN/auth/teambox/callback`.

    heroku config:add TEAMBOX_KEY=XXXXX TEAMBOX_SECRET=XXXXX COOKIE_SECRET=XXXXX

You need to add a list of authorized users, Teambox username, comma separated.

    heroku config:add TEAMBOX_ADMINISTRATOR=charles,pablo,jordi

And push

    git push heroku master

Pointing any domain to the app will automatically scope into a different site.