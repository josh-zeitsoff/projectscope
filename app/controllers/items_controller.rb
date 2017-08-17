class ItemsController < ApplicationController


  #display form to create new progress bar
  # GET /whitelists/new

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end
  
  #def create
    #@item = Item.new(params[:description], params[:order], params[:status], params[:iteration])
    #if @item.save
    # redirect_to '/progress_bars'
  #  else
   #   render 'new'
  # end
  #end



  #def new
    #option to set iteration
    #option to add items with description, order (status set auto)
  #  @progress_bar = ProgressBar.new
  #end

  # GET /progress_bar
  #def index
   # @items = Item.all
    #make display @progress_bar in html file
    #if current_user.is_student?
      #want to set only to current teams progress bar within this iteration
    #else
      #want to get all for given iteration
      
    #end
  #end

  def home
  end

  #saves to db
  # POST /progress_bar/
  def create


  end

  # GET
  def show
  end

  #destroys individual element?
  # DELETE /progress_bar/
  def destroy
      #set all items for this progress bar to nil

  end


  # PATCH/PUT
  def update
    #update status of all items or single
    #for each item in current iteration:
    #status = get_status_from_view
    #timestamp = get_timestamp
    transition = Transition.initialize(item, timestamp, status)
    #redisplay? Or automatically done


  end

  # GET
  def edit
    # edit single item
  end



  #make new iteration objects here?

end