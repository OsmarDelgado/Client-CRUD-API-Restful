class Client < ApplicationRecord
    # validations
    validates_presence_of :name, :business_name, :rfc, :id_direction, :cellphone, :telephone, :email
end
