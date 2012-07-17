class Client < ActiveRecord::Base
  attr_accessible :additional_info, :allergy, :birthday, :cell, :country, :diabetes, :email, :found, :herpes, :name, :nid, :pregnancy, :psoriasis, :sensitive_skin, :steroids, :surname, :yellows, :herpes_info
  validates :surname, :presence => true
  before_save :update_birthday
  has_many :treatments

  def full_name
    return "#{self.name} #{self.surname}"
  end

  def update_birthday
    if self.nid.size >= 6 and self.birthday == nil
      self.birthday = Date.strptime("19"+self.nid[0..5],"%Y%m%d")
    end
  end
  
  def any_contraindications?
    if self.allergy or self.diabetes or self.herpes or self.pregnancy or self.psoriasis or self.sensitive_skin or self.steroids or self.yellows
      return true
    else
      return false
    end
  end
end
