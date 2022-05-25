
# Hospital Apis

These are the apis to mange hospital . There are multiple  parts.
Including Hospital, Doctor & patient.


## Routes

#### Get all hospitals

```http
  GET /hospital
```


#### Get hospital

```http
  GET /hospital/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |


#### Create hospital

```http
  POST /hospital/
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name`      | `string` | **Required**. Name of hospital |

#### Update hospital

```http
  PATCH /hospital/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to update |
| `name`      | `string` | **Required**. Name of hospital |


#### Get all doctors

```http
  GET /hospital/doctors
```


#### Get doctor

```http
  GET /hospital/doctors/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |


#### Create item

```http
  POST /hospital/doctors/
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `name`      | `string` | **Required**. Name of doctor |
| `email`      | `string` | **Required**. Email of doctor |
| `degree`      | `string` | **Required**. Degree of doctor |

#### Update item

```http
  PATCH /hospital/doctors/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to update |
| `name`      | `string` | **Required**. Name of doctor |
| `email`      | `string` | **Required**. Email of doctor |
| `degree`      | `string` | **Required**. Degree of doctor |



## Features

- create hospitals
- hospitals can have multiple doctors 
- doctors can have multiple patients 
- once dotor is created he will reciecve a welcome email with his details


## Installation

Install gems and then run project

```bash
  bundle install
  rails db:migrate
  rails s
```
    
## Environment Variables

To send welcome email to doctor you need to se following variables in config/environments/development.rb

`user_name`

`password`


## 🚀 About Me
I'm a full stack software engineer.


## Authors

- [@muhammad-ur-rehman](https://www.github.com/muhammad-ur-rehman)

