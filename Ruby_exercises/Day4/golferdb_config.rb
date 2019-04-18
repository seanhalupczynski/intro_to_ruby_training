require 'activerecord'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  database: 'presidents',
  username: 'wasadmin',
  password: ''
)
