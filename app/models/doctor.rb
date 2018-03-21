class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visits
  has_many :patients,-> { distinct }, :through => :visits
  belongs_to :institution
  #belongs_to :cities, :through =>:institution
  belongs_to :specialization

  validates :specialization, presence: true

  def name_with_initial
    "#{first_name.first}. #{last_name}"
  end
end
