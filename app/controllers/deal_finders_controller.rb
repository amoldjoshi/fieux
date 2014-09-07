class DealFindersController < ApplicationController
 load_and_authorize_resource #Amol added dont know why
	 # GET /deal_finders
  # GET /deal_finders.json
  def index
    @deal_finders = DealFinder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deal_finders }
    end
  end

  # GET /deal_finders/1
  # GET /deal_finders/1.json
  def show
    @deal_finder = DealFinder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deal_finder }
    end
  end

  # GET /deal_finders/new
  # GET /deal_finders/new.json
  def new
    @deal_finder = DealFinder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deal_finder }
    end
  end

  # GET /deal_finders/1/edit
  def edit
    @deal_finder = DealFinder.find(params[:id])
  end

  # POST /deal_finders
  # POST /deal_finders.json
  def create
    @deal_finder = DealFinder.new(params[:deal_finder])

    respond_to do |format|
      if @deal_finder.save
        format.html { redirect_to @deal_finder, notice: 'Deal finder was successfully created.' }
        format.json { render json: @deal_finder, status: :created, location: @deal_finder }
      else
        format.html { render action: "new" }
        format.json { render json: @deal_finder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deal_finders/1
  # PUT /deal_finders/1.json
  def update
    @deal_finder = DealFinder.find(params[:id])

    respond_to do |format|
      if @deal_finder.update_attributes(params[:deal_finder])
        format.html { redirect_to @deal_finder, notice: 'Deal finder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deal_finder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_finders/1
  # DELETE /deal_finders/1.json
  def destroy
    @deal_finder = DealFinder.find(params[:id])
    @deal_finder.destroy

    respond_to do |format|
      format.html { redirect_to deal_finders_url }
      format.json { head :no_content }
    end
  end
end
