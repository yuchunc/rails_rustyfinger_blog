class Post < ActiveRecord::Base
  before_create :set_permalink

  scope :all_except_about, -> { where.not(permalink: "about") }

  def to_param
    self.permalink
  end

private
  def set_permalink
    self.permalink ||= self.title.parameterize
  end
end
