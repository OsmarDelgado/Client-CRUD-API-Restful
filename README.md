# API Rest Client CRUD

API Rest CRUD de clientes hecha en Ruby on Rails y con base de datos en Postgresql

### Instalación

Para la instalación, seguir los siguientes pasos.

`$ bundle install`

Después ejecutar se deberá crear la base de datos y hacer la migración pertinente.

`$ bundle exec rake db:create`
`$ bundle exec rake db:migrate`

Por último iniciar el projecto.

`$ bundle exec rails server`

Podemos usar HTTPIE desde la terminal para generar los datos, por ejemplo:

```
# GET /clients 
$ http :3000/clients

# POST /clients
$ http POST :3000/clients  name=Name business_name="Name business" rfc=RFC123 id_direction=Direction cellphone=123 telephone=123, email=mail@mail.com

# PUT /todos/:id
$ http PUT :3000/clients/1 name=OtherName business_name="Name business" rfc=RFC123 id_direction=Direction cellphone=123 telephone=123, email=mail@mail.com

# DELETE /clients/:id
$ http DELETE :3000/clients/1
```
