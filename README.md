# 📚 Movie-chan 

Create your own movie watch list in a cute and retro themed interface.

![Screenshot 2024-09-09 at 3 56 31 PM](https://github.com/user-attachments/assets/a4904258-b9fe-4e3e-a59e-41f7bef378c8)![Screenshot 2024-09-09 at 3 56 51 PM](https://github.com/user-attachments/assets/5de28a74-2a08-4fc4-b127-ce3b644fd8af)![Uploading Screenshot 2024-09-09 at 3.57.04 PM.png…]()


<br>

App home: https://movie-chan-watch-list-b4ae14af858f.herokuapp.com/
   

## Getting Started
### Setup

Install gems
gem "bootstrap", "~> 5.2"
gem "devise"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form", github: "heartcombo/simple_form"
gem "sassc-rails"
gem "geocoder"
gem 'ffi', '1.16.3'
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) - Basic Styling
— [SCSS](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping


## Acknowledgements
- My 90's VHS days and love for cute anime looking things.

## Team Members
- [Brian Inphouva](https://www.linkedin.com/in/brian-inphouva/)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License

