class ProgressBarController < ActionController


  # GET /whitelists/new
  def new
    @progress_bar = ProgressBar.new
  end

  # GET /progress_bar
  def index
    if current_user.is_student?
      #redirect_to user progress bar
    else
      #redirect to instructor all progress bars
    end
    @items = Items.all

  end

  # POST /progress_bar/
  def create
  end

  # GET
  def show
  end

  # DELETE /progress_bar/
  def destroy
      #set all items for this progress bar to nil

  end


  # PATCH/PUT
  def update
    #update status of all items
    #for each item in current iteration:
    #status = get_status_from_view
    #timestamp = get_timestamp
    #@transition = Transition.initialize(item, timestamp, status)
    #transition.save      put transition in db
    #redisplay? Or automatically done

  end

  # GET
  def edit
    #change current progress_bar
  end



  #make new iteration objects here?

end