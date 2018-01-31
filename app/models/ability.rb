class Ability < ActiveRecord::Base
    def initialize(user)

        user ||= User.new

        if User.current_role == 'admin' 
            can :manage, :all 
        else
            if User.current_role == 'patient'
                can :read, Products
                can :update, Products
                cannot :destroy, Products
                cannot :create, Products

                cannot :manage, Client
            end

            can :read, :all
        end
    end
end
