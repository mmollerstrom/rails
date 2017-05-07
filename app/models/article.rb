class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  has_many :comments

  def message
    @comments = comments.message(params[:message])
  end

  def email
    @comments = comments.email(params[:email])
  end

end
