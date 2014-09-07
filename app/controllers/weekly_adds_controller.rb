class WeeklyAddsController < ApplicationController
    load_and_authorize_resource
	# GET /weekly_adds
  # GET /weekly_adds.json
  def index
    @weekly_adds = WeeklyAdd.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weekly_adds }
    end
  end

  # GET /weekly_adds/1
  # GET /weekly_adds/1.json
  def show
    @weekly_add = WeeklyAdd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weekly_add }
    end
  end

  # GET /weekly_adds/new
  # GET /weekly_adds/new.json
  def new
    @weekly_add = WeeklyAdd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weekly_add }
    end
  end

  # GET /weekly_adds/1/edit
  def edit
    @weekly_add = WeeklyAdd.find(params[:id])
  end

  # POST /weekly_adds
  # POST /weekly_adds.json
  def create
    @weekly_add = WeeklyAdd.new(params[:weekly_add])

    respond_to do |format|
      if @weekly_add.save
        format.html { redirect_to @weekly_add, notice: 'Weekly add was successfully created.' }
        format.json { render json: @weekly_add, status: :created, location: @weekly_add }
      else
        format.html { render action: "new" }
        format.json { render json: @weekly_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weekly_adds/1
  # PUT /weekly_adds/1.json
  def update
    @weekly_add = WeeklyAdd.find(params[:id])

    respond_to do |format|
      if @weekly_add.update_attributes(params[:weekly_add])
        format.html { redirect_to @weekly_add, notice: 'Weekly add was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weekly_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_adds/1
  # DELETE /weekly_adds/1.json
  def destroy
    @weekly_add = WeeklyAdd.find(params[:id])
    @weekly_add.destroy

    respond_to do |format|
      format.html { redirect_to weekly_adds_url }
      format.json { head :no_content }
    end
  end
end
