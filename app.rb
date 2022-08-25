require "active_record"
require "json"
require "sinatra"
require "sinatra/activerecord"
require "sqlite3"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "requests.sqlite3")

ActiveRecord::Schema.define do
  create_table :requests, force: true do |t|
    t.text :content
  end
end

class Request < ActiveRecord::Base
end

get "/" do
  @requests = Request.all
  erb :index
end

post "/" do
  Request.create!(content: params.to_json)
  redirect "/"
end
