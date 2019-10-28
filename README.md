### Goal
This project was created for a job application at Delivery center


# Github-G
#### What it does?
The project was intended to use the github api to get the most starred repositories on the platform, save them to a database (the applications get new repositories every day) and provide a endpoint to get the top 5. The endpoint has the option to pass the params:
- language: to get repositories only from that language
- name: to get repositories with the name provided
- order: to order the results based on the stars quantity
- limit: to set the max records result

The params are all optional, and you can use them all at once if you want to.


#### API endpoints

### https://github-r.herokuapp.com

##### This endpoint returns repositories

**params:**

    name: string
    language: string
    order: (asc | desc) - default (desc)
    limit: integer - default (5)

### https://github-r.herokuapp.com/repositories

##### This endpoint returns repositories

**params:**

    name: string
    language: string
    order: (asc | desc) - default (desc)
    limit: integer - default (5)

### https://github-r.herokuapp.com/repositories/:id

##### This endpoint returns repository specified by id

**params:**

    id: integer

### https://github-r.herokuapp.com/owners

##### This endpoint returns all the owners

### https://github-r.herokuapp.com/owners/:id

##### This endpoint returns repository specified by id

**params:**

    id: integer

### Postman collection

#### https://drive.google.com/open?id=1tNoIu8nZ9iaSAWR4cpn4Q_PuBXfgSNhI
