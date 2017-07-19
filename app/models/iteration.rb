class Iteration < ActiveRecord::Base
  has_many :items

  #items represents the items that belong to this iteration

  def new
    self.save
  end

  def items
      #get all items
      #Items.where(transition: self)
      #sort by item ordering

  end


  def add_item(order)
    #item = Item.new
    #item.iteration = self?
    #item.status = 0/false
    #item.order = order
    #item.save
  end






  #how to make db calls??
end