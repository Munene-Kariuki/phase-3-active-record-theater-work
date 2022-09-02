class Role < ActiveRecord::Base
  has_many :auditions

  def actors 
    self.auditions.map do |audition| 
      audition.actor
    end  
  end  

  def locations
    self.auditions.map do |audition| 
      audition.location
    end  
  end  

  def lead 
    self.auditions.each do |audition|
      if audition.hired == true
        return audition
      end  
    end
    "no actor has been hired for this role"
  end  

  def understudy
    hired_auditions = self.auditions.select do |audition|
      audition.hired?
    end 
    
    if hired_auditions.length > 1
      return hired_auditions[1]
    else
      return "no actor has been hired for understudy for this role"  
    end  
    
  end  

end  