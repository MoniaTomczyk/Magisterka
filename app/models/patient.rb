class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visits
  has_many :doctors, :through => :visits
  has_many :labs

  def full_name
    "#{name} #{surname}"
  end


end
