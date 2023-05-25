class AuthorSerializer < ActiveModel::Serializer
  attributes :name, :profile
  has_one :profile
  has_many :posts

  # def short_content
  #   `#{self.object.posts.content[0...39]}...`
  # end
end
