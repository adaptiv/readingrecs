require 'sinatra'
require 'json'

get '/books.json' do
  content_type 'application/json'
  {
    title: "The Black Swan: Second Edition: The Impact of the Highly Improbable: With a new section: \"On Robustness and Fragility\"",
    author: "Nassim Nicholas Taleb",
    image_url: "http://ecx.images-amazon.com/images/I/41CeS0f8VPL.jpg",
    buy_url: "http://www.amazon.com/The-Black-Swan-Improbable-Robustness/dp/081297381X%3FSubscriptionId%3DAKIAJQDZ4SYUYSLDGWJA%26tag%3Dadaptiv_20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3D081297381X",
    adaptiv_review: "Bacon ipsum dolor sit amet short loin jowl capicola tail, t-bone short ribs pork loin andouille corned beef filet mignon ball tip jerky. Chicken ball tip bacon turducken, short loin pastrami tail andouille pork. Swine ribeye pancetta pork loin bacon meatloaf flank. Sirloin leberkas pork chop venison, doner andouille pig cow shank. Jerky ribeye biltong t-bone drumstick chicken. Tenderloin sirloin flank bresaola fatback, ham jerky frankfurter tongue pig shank jowl bacon kielbasa. Venison ribeye leberkas pig, capicola turducken fatback tenderloin.

Ribeye boudin jerky, sausage turducken ham spare ribs strip steak shoulder short ribs flank pork shankle pastrami. Beef filet mignon frankfurter spare ribs, fatback biltong pork chop drumstick. Strip steak ham drumstick venison andouille. Pig beef turkey pancetta. Ground round ball tip t-bone, doner shankle sausage tail pork ham hock pork chop jerky tongue capicola short loin pork belly. Ribeye leberkas fatback kielbasa swine chuck sausage ball tip salami. Capicola hamburger meatloaf ribeye pork cow sirloin pancetta filet mignon."
  }.to_json
end
