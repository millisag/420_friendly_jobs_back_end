class Job < ApplicationRecord
<<<<<<< HEAD
  belongs_to :employer
=======
    belongs_to :company, :class_name => 'User', :foreign_key => 'company_id'
>>>>>>> 804e8855d4f5cd06df80b7c6c4747c6920d15467
end
