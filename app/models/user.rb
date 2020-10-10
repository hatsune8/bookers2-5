class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books
  attachment :profile_image, destroy: false




  # scope :search, -> (search_params) do
  #   return if search_params.blank?

  #   name_like(search_params[:name])
  # end
  # scope :name_like, -> (name) { where('name LIKE ?', "%#{name}%") if name.present? }


  validates :name, length: {maximum: 20, minimum: 2}, uniqueness: true
  validates :introduction, uniqueness: true, length: { maximum: 50 }
end
