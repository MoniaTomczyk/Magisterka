class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "340x148>", :thumb => "299x169#" }, :default_url => "/images/:style/missing.jpeg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  # before_save :set_role

  cattr_accessor :current_role 

  belongs_to :role
  #belongs_to :role
 # delegate :permissions, :to => :role

  #enum role: {admin: 1, patient: 2, doctor: 3}


  # def full_name
  #   name.blank? ? email : name
  # end

  # def method_missing(method_id, *args)
  #   if match = matches_dynamic_role_check?(method_id)
  #     tokenize_roles(match.captures.first).each do |check|
  #     return true if role.name.downcase == check
  #   end
  #   return false
  #   elsif match = matches_dynamic_perm_check?(method_id)
  #     return true if permissions.find_by_name(match.captures.first)
  #   else
  #     super
  #   end
  # end

  # private

  # # previous methods omitted
  #  def matches_dynamic_perm_check?(method_id)
  #   /^can_([a-zA-Z]\w*)\?$/.match(method_id.to_s)
  #  end


  # def edit
  #   @user = User.find(params[:id])
  #   @roles =  [:admin, :patient, :doctor]
  #  end

  # def user_params
  #   params.require(:user).permit(role_ids: [])
  # end

end