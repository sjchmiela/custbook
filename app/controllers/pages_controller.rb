
class PagesController < ApplicationController
  expose(:treatments_young) { Treatment.find(:all, :conditions => {:date => 18.months.ago..16.months.ago}, :include => :client)}
  expose(:treatments_old) {Treatment.find(:all, :conditions => {:date => 30.months.ago..28.months.ago}, :include => :client)}
end
