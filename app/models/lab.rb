class Lab < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  belongs_to :type

  validates :date, presence: true
  validates :additional_info, presence: true
  validates :attachment, presence: true
  validates :type, presence: true

  has_attached_file :attachment
  validates_attachment_content_type :attachment, content_type: ['image/jpeg', 'image/png', 'image/gif', 'application/pdf'],  :message => "Nieprawidłowy typ pliku. Proszę dodaj plik w formacie .jpg/.png/.pdf."


	def date_change
   		"#{date}".to_formatted_s(:db)
    end   

  def to_s
    date.try(:to_formatted_s, :db)
  end
end
