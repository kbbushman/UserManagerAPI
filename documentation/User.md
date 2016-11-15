# User API

## `GET /users`

**Response:**

- Status Code: 200

Sample Response:

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"user_name": "bjones",
	"email": "bjones@gmail.com"
}
```

## `POST /users`

**Body Parameters**

- first_name: String
- last_name: String
- user_name: String
- email: String

**Response**

- Status Code: 201

Sample Response:

```json
{
	"first_name": "Bob",
	"last_name": "Jones",
	"user_name": "bjones",
	"email": "bjones@gmail.com"
}
```

## `Get /users/:id`

**Response**

- Status Code: 200

Sample Response:

## `Put /users/:id`

**Response**

- Status Code: 204

Sample Response:

## `Delete /users/:id`

**Response**

- Status Code: 200

Sample Response: