class Iteration < ActiveRecord::Base
  has_many :items

  #items represents the items that belong to this iteration
  #iteration represents my iteration number

  def new
    self.save
  end

  def initialize
  end

  def set_iteration
    self.iteration = iteration
    self.save
  end

  def iteration
    self.iteration
  end

  def items
      @items = Items.where(iteration: self.iteration).order(:order)
      #sort by item ordering

  end


  #account for team specific items?
  def add_item(order)
    item = Item.new
    item.set_iteration(self.iteration)
    item.set_order(order)
  end

  #do we want to remove for all progress bars with this item?
  #option 1- remove for ALL progress bars within this iteration
  #option 2- remove for team-specific progress bar within this iteration
  #faster to store teams item belongs to or make separate DB entries ()item, team).  Wouldn't this make team * item entries as opposed to
  #item entries? Thoough storing teams in an array also requires iteration through all teams to display. Still need to do this iteration
  #if we make separate db entries though. Time complexity is the same, array option less space?
  def remove_item(order, team = nil)
    if team.nil?
      @items[order].destroy
    else
      #case when we store items belonging to a particular team
    end

  end







  #how to make db calls??
end