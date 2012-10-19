require 'sinatra'
require 'json'

get '/books.json' do
  content_type 'application/json'
  {
    title: "The Black Swan: Second Edition: The Impact of the Highly Improbable: With a new section: \"On Robustness and Fragility\"",
    author: "Nassim Nicholas Taleb",
    image_url: "http://ecx.images-amazon.com/images/I/41CeS0f8VPL.jpg",
    buy_url: "http://www.amazon.com/The-Black-Swan-Improbable-Robustness/dp/081297381X%3FSubscriptionId%3DAKIAJQDZ4SYUYSLDGWJA%26tag%3Dadaptiv_20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D081297381X",
    adaptiv_review: "This is a short review.
With a line break."
  }.to_json
end
