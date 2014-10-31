class Post < ActiveRecord::Base
  before_create :set_permalink

  def to_param
    self.permalink
  end

private
  def set_permalink
    self.permalink ||= self.title.parameterize
  end
end
