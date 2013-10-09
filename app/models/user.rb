class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email, :name, :password, :password_confirmation, :role

  validates :email, presence: true
  validates :password, presence: {on: 'create'}, confirmation: {if: :password}
  validates :name, presence: true  
end
