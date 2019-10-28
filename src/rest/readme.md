#REST API description

###Request methods and meaning
- GET - get data from server, doesnt change state of server or database in any way!
- DELETE - Deletes records from database
- POST - Creates new record in database OR changes state of server (e.g. user login, logout)
- PUT - Updates database record

#### User API
/users [GET] - Get all users
/users?id=1 [GET] - Get user with specified id
/users?id=1 [DELETE] - Deletes user with specified id
/users [POST] - Creates new user (user info in request body)

/users/login [POST] - login user (user credentials in request body)
/users/logout [POST] - logout user