class ThingType1sController < ApplicationController
  # GET /thing_type1s
  # GET /thing_type1s.xml
  def index
    @thing_type1s = ThingType1.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @thing_type1s }
    end
  end

  # GET /thing_type1s/1
  # GET /thing_type1s/1.xml
  def show
    @thing_type1 = ThingType1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thing_type1 }
    end
  end

  # GET /thing_type1s/new
  # GET /thing_type1s/new.xml
  def new
    @thing_type1 = ThingType1.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thing_type1 }
    end
  end

  # GET /thing_type1s/1/edit
  def edit
    @thing_type1 = ThingType1.find(params[:id])
  end

  # POST /thing_type1s
  # POST /thing_type1s.xml
  def create
    @thing_type1 = ThingType1.new(params[:thing_type1])

    respond_to do |format|
      if @thing_type1.save
        flash[:notice] = 'ThingType1 was successfully created.'
        format.html { redirect_to(@thing_type1) }
        format.xml  { render :xml => @thing_type1, :status => :created, :location => @thing_type1 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thing_type1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thing_type1s/1
  # PUT /thing_type1s/1.xml
  def update
    @thing_type1 = ThingType1.find(params[:id])

    respond_to do |format|
      if @thing_type1.update_attributes(params[:thing_type1])
        flash[:notice] = 'ThingType1 was successfully updated.'
        format.html { redirect_to(@thing_type1) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thing_type1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_type1s/1
  # DELETE /thing_type1s/1.xml
  def destroy
    @thing_type1 = ThingType1.find(params[:id])
    @thing_type1.destroy

    respond_to do |format|
      format.html { redirect_to(thing_type1s_url) }
      format.xml  { head :ok }
    end
  end
end
