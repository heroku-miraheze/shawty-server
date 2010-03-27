## Resources
require 'rubygems'
gem 'sinatra', :version => '1.0'
require 'sinatra'
require 'active_record'
gem 'alphadecimal'
require 'alphadecimal'

## Application

get '/' do
  "Post to '/' to save a url and receive a plaintext short url in response\nExample: POST /http://some.url/at.someplace"
end

get '/:id' do
  pass unless record = find_by_id(params[:id].alphadecimal)

  redirect record['url'], 301
end

post '*' do
  pass if params[:splat].empty?

  url = params[:splat].first
  url = url[1, url.size] if url.chars.first == '/'

  quoted = quote url

  found = execute %Q{ SELECT id FROM #{table_name} WHERE url = #{quoted} }

  if found.any?
    id = found['id']
  else
    execute %Q{ INSERT INTO #{table_name} (url, id) VALUES (#{quoted}, nextval('shawty_id_seq')) }
    found = execute %Q{ SELECT MAX(id) from #{table_name} }
    id = found.first['max']
  end

  "http://#{request.host}/#{id.alphadecimal}"
end


## Helpers

def find_by_id(id)
  result = execute %Q{ SELECT url FROM #{table_name} WHERE id = #{quote id.to_i} }
  return result.map.first if result.map.length
end

def execute sql
  ActiveRecord::Base.connection.execute sql
end

def quote string
  ActiveRecord::Base.connection.quote string
end

def table_name
  ActiveRecord::Base.connection.quote_table_name 'shawty'
end

def initialize_database
  table = execute %Q{select * from pg_tables where tablename = #{quote 'shawty'}}
  return if table.any?
  execute %Q{
    CREATE TABLE #{table_name} (
      id SERIAL PRIMARY KEY,
      url varchar(255) UNIQUE
    )
  }
end

def database_config
  YAML.load(File.read('config/database.yml'))
end

## Environments

configure :production do
  ActiveRecord::Base.establish_connection database_config['production']
  initialize_database
end

configure :test do
  ActiveRecord::Base.establish_connection database_config['test']
  # ActiveRecord::Base.logger = Logger.new(STDOUT)
  initialize_database
end