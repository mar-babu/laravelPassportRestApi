If issue with installation.. ? Checkout the <a href="https://drive.google.com/drive/folders/1a1OfIkd0_mjj0yQYuU0HI-f6qjGHrr26?usp=sharing">zip</a>. 

Product Management - Role & Permission
Laravel 9 REST API with Passport Authentication - Ajax


## Installation

- Run ```cp .env.example .env```
- Run ```composer install```
- Provide db name, username and password in .env
- Run ```php artisan migrate```
- Run ```php artisan passport:install```
- Run ```php artisan serve```

Sign up > Sign In > enjoy

or 

you can also import db from app\database\

Admin credentials:

```
Email: admin@gmail.com or sadmin@gmail.com
Password: 12345678
```



## Test

You can also Test the REST API with <a href="https://www.postman.com/">POSTMAN</a>. 

Register API:
- POST ```http://localhost:8000/api/register?name=Md. Abdur Rahman&email=arcse3048@gmail.com&password=12345678```

Login Passport API:
- POST ```http://localhost:8000/api/login?email=arcse3048@gmail.com&phone=0125478963&password=12345678```

Passport Product Create API:
- POST ```http://localhost:8000/api/products?name=Test Name&description=Test Description&price=112&status=1p```

Product List API:
- GET ```http://localhost:8000/api/products```

Show Single Product API:
- GET ```http://localhost:8000/api/products/{id}```


Product Update API:
- PUT ```http://localhost:8000/api/products/{id}```

Product Delete API:
- DELETE ```http://localhost:8000/api/products/{id}```