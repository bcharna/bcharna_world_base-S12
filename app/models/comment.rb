class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true

  validates :content, :presence => true
  validates :name, :presence => true
  validates :email, :presence => true, :format => { :with => /^[^@]+@[\w\.]+\.\w{2,4}$/ }
end
