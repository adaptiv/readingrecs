#require_relative '../books.rb'
require 'rspec'
#require 'rack/test'
require 'json'

#set :environment, :test

describe 'Readingrecs' do
  #include Rack::Test::Methods

  #def app
  #  Sinatra::Application
  #end

  before do
  pending
  #  get '/books.json'
  #  json = last_response.body
  #  @book = JSON.parse(json)
  end

  it "should return books as json" do
    last_response.content_type.should == 'application/json;charset=utf-8'
  end

  it "should have a title" do
    @book["title"].should == "The Black Swan: Second Edition: The Impact of the Highly Improbable: With a new section: \"On Robustness and Fragility\""
  end

  it "should have an author" do
    @book["author"].should == "Nassim Nicholas Taleb"
  end

  it "should have an image_url" do
    @book["image_url"].should == "http://ecx.images-amazon.com/images/I/41CeS0f8VPL.jpg"
  end

  it "should have a buy_url" do
    @book["buy_url"].should == "http://www.amazon.com/The-Black-Swan-Improbable-Robustness/dp/081297381X%3FSubscriptionId%3DAKIAJQDZ4SYUYSLDGWJA%26tag%3Dadaptiv_20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D081297381X"
  end

  it "should have a review" do
    @book["adaptiv_review"].should == "This is a short review.\nWith a line break."
  end

end
