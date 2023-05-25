class PostSerializer < ActiveModel::Serializer
  attributes :title, :tags, :short_content, :content
  belongs_to :author
  has_many :tags

  def short_content
    "#{self.object.content[0...40]}..."
  end
end
