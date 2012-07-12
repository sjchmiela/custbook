class Client < ActiveRecord::Base
  attr_accessible :additional_info, :allergy, :birthday, :cell, :country, :diabetes, :email, :found, :herpes, :name, :nid, :phone, :pregnancy, :psoriasis, :sensitive_skin, :steroids, :surname, :yellows
  validates :surname, :presence => true
  before_save :update_birthday

  def full_name
    return "#{self.name} #{self.surname}"
  end

  def update_birthday
    if self.nid.size >= 6 and self.birthday == nil
      self.birthday = Date.strptime(self.nid[0..5],"%y%m%d")
    end
  end
      
end
