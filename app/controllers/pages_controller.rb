
class PagesController < ApplicationController
  def home
  	@treatments_young = Treatment.find(:all, :conditions => {:date => 18.months.ago..16.months.ago})
  	@treatments_old = Treatment.find(:all, :conditions => {:date => 30.months.ago..28.months.ago})
  end
end
