class Client < ActiveRecord::Base
  attr_accessible :additional_info, :allergy, :birthday, :cell, :country, :diabetes, :email, :found, :herpes, :name, :nid, :phone, :pregnancy, :psoriasis, :sensitive_skin, :steroids, :surname, :yellows
end
