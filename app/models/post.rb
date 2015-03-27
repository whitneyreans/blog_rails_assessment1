class Post < ActiveRecord::Base

  belongs_to :user
<<<<<<< HEAD
  has_many :comments
=======
>>>>>>> 2eea6d9d452ed3045f595a213d7604ac0ef8cd85

  validates :body, :presence => true
end
