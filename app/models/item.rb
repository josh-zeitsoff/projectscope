class Item < ActiveRecord::Base
  belongs_to :iteration
  has_many :transitions

  #status represents if the item is done or not, either 0/1 or boolean
  #iteration represents the iteration that this item belongs to
  #order represents the order of the item in the iteration

  def new
  end

  def update_status(status)
      self.status = status
      self.save
  end



  #need to figure out ordering within transition


end