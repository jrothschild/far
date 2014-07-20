class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activities
  has_many :publications

  after_create { |admin| admin.send_reset_password_instructions }

    def password_required?
      new_record? ? false : super
    end

  def full_name
 
    if self.middle_name.nil?
      @full_name = self.first_name + " " + self.last_name
    else
      @full_name = self.first_name + " " + self.middle_name + " " + self.last_name
    end

  end

  def activity

    
      
        activities.each do |activity| 

         activity.title 
     end

  end


end
