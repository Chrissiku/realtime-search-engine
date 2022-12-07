# Real-time Search box
> This project is a realtime search engine that shows analytics on whats people searched for the most.

## Note
This project is realtime search engine built with `ruby on rails` and in order to manage the realtime page load I implement the `Turbo_Frames` features linked with `Stimulus Js`.

## Live Link
[Live Link](https://rails-tw19.onrender.com/articles)

## Built With

- Ruby on Rails
- Turbo_frames
- Postgresql
- stimulus

## Getting Started

To get a local copy up and running follow these simple example steps.

```sh
git clone git@github.com:Chrissiku/realtime-search-engine.git
cd realtime-search-engine
```

### Prerequisites
Before starting make sure that you have the following runing on your computer
- `Ruby 3.1.2`
- `Rails 7.0.4`
- `PostgresSQL any version`

### Setup

Install gems with:
```sh
bundle install
```
on the root of your project create a file `.env` to store your database name and the password.

```sh
touch .env
```
`.env` file content
```ruby
DB_USERNAME=your_database_name
DB_PASSWORD=your_database_password
```

Setup database

```sh
rails db:setup
rails db:migrate
rails db:seed
```

Start server 

```sh
rails server
```

Open [http://localhost:3000/](http://localhost:3000/]) in your browser.
 
 At this point you should start browsing the app
### Run tests

```
bundle exec rspec
```
## Author

👤 **Chris Siku**

- GitHub: [@chrissiku](https://github.com/chrissiku)
- Twitter: [@christian_siku](https://twitter.com/christian_siku)
- Linkedin: [@christian_siku](https://www.linkedin.com/in/christian-siku/)




### 🔭 Future Features

- [ ] Display how users formulate their search

### 🤝 Contributing 
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).


<!-- SUPPORT -->

## ⭐️ Show your support

> Write a message to encourage readers to support your project

If you like this project...


## Acknowledgments

- Credits go to the whole team at [HelpJuice](https://www.Helpjuice.com)

## 📝 License

This project is MIT licensed.
