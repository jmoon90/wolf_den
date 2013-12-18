class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content

  validate :john_approves_of_title

  def john_approves_of_title
    if title.present? && title.length < 4
      errors.add(:title, "is not approved by John")
    end
  end
end
