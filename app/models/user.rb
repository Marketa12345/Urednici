class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable, :confirmable and :activatable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  ratyrate_rater

  has_many :reviews, dependent: :destroy
  #devise_for :users, controllers: { sessions: "users/sessions" }
#attr_accessible :email, :password, :password_confirmation, :remember_me, :encrypted_password
  #before_action :authenticate_user!
#User.new.respond_to?(:encrypted_password=) => false

#devise_scope :user do
  #get "sign_in", to: "devise/sessions#new"
#end
  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation
end