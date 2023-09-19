
#Let's add some validations to our model in app/models/article.rb:
#
#

class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end



# class Article < ApplicationRecord
# end
