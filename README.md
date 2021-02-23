# BOOKSTORE API

This is an API build with Rails 6.1.1. build for the project Bookstore for the Microverse React and Redux module. You can find the code of the Bookstore react and redux app at this [link](https://github.com/javierbotero/bookstore) that uses this API which is capable to store book data, users, and comments. Feel free to fork this project and make your API up and running. If you want to see the JS requests in action are in this [file](https://github.com/javierbotero/bookstore/blob/development/src/actions/index.js).

## Built With

- Rails 6.1.1
- Ruby 2.7.2p137

## Getting started

To start with the project:

1. Install Ruby and Ruby on Rails in your machine, it is recommended to use the same versions that use this project.
2. Fork this repository.
3. Run `bundle install` inside the folder where the app lives.
4. Run rails db:create
5. Run `bin/rails active_storage:install` to generate a migration that creates the two tables needed for the uploading functionality.
6. Run the migration to database
    - rails db:migrate
7. Run the rails server
    - rails server

## Instructions

### Requests

This is an example of a request to create a new user using js fetch() in a local development using port 3000:

```
fetch('https//localhost:3000/users', {
  method: 'POST',
  mode: 'cors',
  cache: 'no-cache',
  credentials: 'same-origin',
  headers: new Headers({
    'Content-Type': 'application/json',
    Authorization: `Token token=${TOKEN}`,
  }),
  redirect: 'follow',
  referrerPolicy: 'no-referrer',
  body: JSON.stringify({
    email: 'email@email.com',
    password: 'somepassword',
  }),
})
```
As you notice the `Token token=${TOKEN}` is a way to protect and secure the token from being public, you have to set the environment variable:

```
REACT_APP_TOKEN_BOOKS=yourtoken
```

in your machine and in production to make the requests work.

### Generate your Token

To create your token just go to the rails console:

```
rails c
```

in development or production and create the token:

```
token = ApiKey.create!
token.access_token
```

Paste the token in your environment variable.

### Endpoints

These are the endpoints or URLs with their corresponding verb, you can view this information by writing in your terminal:

```
rails routes
```

after the project has been forked:

VERB / URL / CONTROLLER / ACTION

PATCH /users users update,

PUT /users users update,

DELETE /users users destroy,

POST /users users create,

POST /user-books users user_books,

POST /loggin users loggin,

POST /books books create,

PATCH /books/:id books update,

PUT /books/:id books update,

DELETE /books/:id books destroy,

POST /comments comments create,

GET /comments/:id comments show,

PATCH /comments/:id comments update,

PUT /comments/:id comments update,

DELETE /comments/:id comments destroy,

Also if you want to check the proper payload to make the requests take a look at the controller files at:

 ./app/controllers/users_controller.rb,
 
 ./app/controllers/comments_controller.rb,
 
 ./app/controllers/books_controller.rb

## Author

👤 **Javier Botero**

- Github: [@Javierbotero](https://github.com/javierbotero)
- Twitter: [@Javierbotero1](https://twitter.com/JavierBotero1)
- Linkedin: [Javier Botero](https://www.linkedin.com/in/javierboterodev/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!
