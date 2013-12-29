class DailyDealsController < ApplicationController
  # GET /daily_deals
  # GET /daily_deals.json
  def index
    @daily_deals = DailyDeal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_deals }
    end
  end

  # GET /daily_deals/1
  # GET /daily_deals/1.json
  def show
    @daily_deal = DailyDeal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_deal }
    end
  end

  # GET /daily_deals/new
  # GET /daily_deals/new.json
  def new
    @daily_deal = DailyDeal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_deal }
    end
  end

  # GET /daily_deals/1/edit
  def edit
    @daily_deal = DailyDeal.find(params[:id])
  end

  # POST /daily_deals
  # POST /daily_deals.json
  def create
    @daily_deal = DailyDeal.new(params[:daily_deal])

    respond_to do |format|
      if @daily_deal.save
        format.html { redirect_to @daily_deal, notice: 'Daily deal was successfully created.' }
        format.json { render json: @daily_deal, status: :created, location: @daily_deal }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_deals/1
  # PUT /daily_deals/1.json
  def update
    @daily_deal = DailyDeal.find(params[:id])

    respond_to do |format|
      if @daily_deal.update_attributes(params[:daily_deal])
        format.html { redirect_to @daily_deal, notice: 'Daily deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_deals/1
  # DELETE /daily_deals/1.json
  def destroy
    @daily_deal = DailyDeal.find(params[:id])
    @daily_deal.destroy

    respond_to do |format|
      format.html { redirect_to daily_deals_url }
      format.json { head :no_content }
    end
  end
end
