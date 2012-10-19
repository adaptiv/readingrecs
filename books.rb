require 'json'
require 'asin'


ASIN::Configuration.configure(secret:        "DDbiClsE5ponhMcdumEq77kDtdSXB5MSj+7OXyp0",
                              key:           "AKIAJQDZ4SYUYSLDGWJA",
                              associate_tag: 'adaptiv_20')
client = ASIN::Client.instance

json = ["081297381X", "0932633021", "0321503627", "0884271951"].map do |asin|
  items = client.lookup asin
  book  = items.first
  {
    title:          book.title,
    author:         book.raw.ItemAttributes.Author,
    image_url:      book.image_url,
    buy_url:        book.details_url,
    adaptiv_review: "This is a short review for #{book.title}.
With a line break."
  } unless book.nil?
end.to_json

puts json