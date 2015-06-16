require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

get '/' do
  @crm_app_name = "Angel's CRM"
  erb :index
end

get '/contacts' do
  @contacts = []
  @contacts << Contact.new("Angel", "Lopez", "angel@lopez.com", "The awesomest")
  @contacts << Contact.new("Bob", "Roberts", "bob@bob.com", "Robert squared")
  @contacts << Contact.new("Nick", "Jonas", "the@cutest.com", "The cutest")
  @contacts << Contact.new("Joe", "Fresh", "joe@fashion.com", "So fresh and clean")
  @contacts << Contact.new("Michael", "Angelo", "blue@turle.com", "Ninja master")
  @contacts << Contact.new("Donna", "Tello", "orange@turle.com", "Fave is pepperoni")
  @contacts << Contact.new("Raph", "Phael", "red@turle.com", "Likes pointy things")
  @contacts << Contact.new("Leo", "Nardo", "purple@turle.com", "Best friend is a rat")

  erb :contacts
end

get '/contacts/new' do
  erb :add_contact
end

