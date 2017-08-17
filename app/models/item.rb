class Item < ActiveRecord::Base
  has_many :transitions

  #status represents if the item is done or not, either 0/1 or boolean
  #iteration represents the iteration that this item belongs to
  #order represents the order of the item in the iteration

  def new
    self.save
  end

  def set_iteration(iteration)
    self.iteration = iteration
    self.save
  end

  def update_status(new_status)
      status = new_status
      ssave
  end

  def set_order(order)
      self.order = order
      self.save
  end

  #need to figure out ordering within transition


end