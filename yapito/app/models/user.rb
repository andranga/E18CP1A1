class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
  has_many :products_one, class_name: 'Product', foreign_key: :owner_id
  has_many :products_two, class_name: 'Product', foreign_key: :buyer_id
  #has_many :sales

  def self.random(user_id)
    User.where('id != ?', user_id).order("random()").limit(1).first
  end
end
