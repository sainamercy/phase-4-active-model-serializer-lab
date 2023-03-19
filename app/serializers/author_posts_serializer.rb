class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags
  
  def tags
    self.object.tags
  end

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
