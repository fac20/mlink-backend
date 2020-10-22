# mlink-backend

This repo contains the database files for Mlink which is a networking platform for medical proffessionals

## Set-up

### To view this on your local machine:

- clone this repo and open it in you machine
- open you postgres temrminal by running ` psql`
- Then connect and initialise this database by running

```
\c postgres://xuoulumsovbwui:da9a4f59798a7242a0cd061c5e3f824b6254220727aa11ed1688305ee0f70827@ec2-54-75-199-252.eu-west-1.compute.amazonaws.com:5432/d3omm561va1ji7

\i DB/test.sql

```

### To view this on hasura:

Go on this link: https://tfb-mlink.herokuapp.com/console

- Use our super secret key of "secretKey" to be able to query the api
  - you can do this by inputting it as a value to the key "x-hasura-admin-secret" under headers
- You can play around on the interface to:
  - easily generate the query using the explorer on the left
  - Edit and view you queries/results on the graphiQL interface

#### Here's a quick example of what you can do:

![hasura](https://user-images.githubusercontent.com/59174800/96913519-a2dfe280-149b-11eb-806c-cdecc4942413.PNG)
