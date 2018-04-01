# Notes App

## About

This is a simple CRUD app for notes built with Rails.

## Table of Contents
- [Setup](#setup)

## Setup

First clone this repo:
```
git clone https://github.com/lucyconklin/notes.git
```
Then navigate into the folder:
```
cd notes
```

Bundle:
```
bundle
```

Set up your database:
```
rails db:create
rails db:migrate
rails db:seed
rails db:test:prepare
```

Run the test suite:
```
rspec
```

Spin up the rails server
```
rails s
```

And navigate to [http://localhost:3000/](http://localhost:3000/) to see it in the browser. Click on 'Create a new note' to get started.


