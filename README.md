CLP - HCI Fall 2015
===
#### Database is postgresql

To start pg server:

pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

To start db:

  rake db:create
  
  rake db:migrate
  
  rake db:seed
  

  
#### Server for production is Puma

To run Puma server:

  bundle exec puma -t 3:130 -p 3000
  
Development can be done with rails s
