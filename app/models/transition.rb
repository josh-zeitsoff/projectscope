class Transition < ActiveRecord::Base
    belongs_to :item

    def new
    end

    def initialize(item, time, status)
      #item.change_status(status)
      #self.save
    end
    #how to make db calls??

end