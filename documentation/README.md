# Delilah restó API

### **What can I do?**

This API allows you to manage users and orders for a restaurant.

### **Features**

- Users registration and log 
- Role validation
- Token validation for access which expires in certain time
- Products CRUD functions
- Orders CRUD functions



### OPEN API Specifications

https://app.swaggerhub.com/apis/alericdg/delilahAPI/0.1-oas3





## Getting started 

#### Clone or download the repository

```
https://github.com/alericdg/Proyecto-Delilah-Resto
```



#### Install the dependencies

```
  "dependencies": {
    "bcryptjs": "^2.4.3",
    "body-parser": "^1.19.0",
    "express": "^4.17.1",
    "express-validator": "^6.5.0",
    "jwt-simple": "^0.5.6",
    "moment": "^2.26.0",
    "mysql2": "^2.1.0",
    "sequelize": "^5.21.12",
    "sequelize-cli": "^5.5.1"
  }
```



#### Run the API

```
$ node index.js
```



## HTTPverbs

* GET /users   *Returns all registered users*
* GET /products *Returns all existing products*
* GET /orders  *Returns all existing orders*
* POST /users/register *Registers a new user*
* POST /users/login *Logs in an existing user*
* POST /products *Adds a product*
* POST /orders *Posts an order*
* PUT /products/productId *Modifies an existing product* 
* PUT /orders/orderId *Modifies an existing order*
* DELETE/products/productId  *Deletes an existing product*
* DELETE/orders/orderId *Deletes an existing order*



## Dependencies used

-  bcryptjs v. 2.4.3
-   body-parser v. 1.19.0
- express v.4.17.1
- express-validator v. 6.5.0
- jwt-simple v. 0.5.6
- moment v. 2.26.0
- mysql2 v. 2.1.0
- sequelize v. 5.21.12
- sequelize-cli v. 5.5.1
