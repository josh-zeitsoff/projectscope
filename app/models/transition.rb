class Transition < ActiveRecord::Base
    belongs_to :item

    def initialize(item, time, status)
      item.update_status(status)
      self.time = time
      self.save
    end

    #how to make db calls??

end