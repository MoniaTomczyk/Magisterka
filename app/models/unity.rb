class Unity < ActiveRecord::Base
	attr_accessor :role_id, :user_id

    belongs_to :role
    belongs_to :user
end
