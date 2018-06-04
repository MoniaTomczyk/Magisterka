class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visits
  has_many :labs
  has_many :patients,-> { distinct }, :through => :visits
  belongs_to :institution
  #belongs_to :cities, :through =>:institution
  belongs_to :specialization

  validates :specialization, presence: true

  has_attached_file :avatar, styles: { medium: "500x500", thumb: "300x300" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def picture_from_url
    self.avatar = URI.parse(self.image_url)
    self.save
  end

  def name_with_initial
    "#{first_name.first}. #{last_name}"
  end

  def full_name
    "#{name} #{surname}"
  end

end
