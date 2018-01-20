class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "340x148>", :thumb => "299x169#" }, :default_url => "/images/:style/missing.jpeg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def full_name
    name.blank? ? email : name
  end
end