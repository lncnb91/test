class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :author
  has_many :article_tags, dependent: :destroy
  has_and_belongs_to_many :tags

  validates :title, :content, :category, presence: true
end
