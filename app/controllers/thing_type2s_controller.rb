class ThingType2sController < ApplicationController
  # GET /thing_type2s
  # GET /thing_type2s.xml
  def index
    @thing_type2s = ThingType2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @thing_type2s }
    end
  end

  # GET /thing_type2s/1
  # GET /thing_type2s/1.xml
  def show
    @thing_type2 = ThingType2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thing_type2 }
    end
  end

  # GET /thing_type2s/new
  # GET /thing_type2s/new.xml
  def new
    @thing_type2 = ThingType2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thing_type2 }
    end
  end

  # GET /thing_type2s/1/edit
  def edit
    @thing_type2 = ThingType2.find(params[:id])
  end

  # POST /thing_type2s
  # POST /thing_type2s.xml
  def create
    @thing_type2 = ThingType2.new(params[:thing_type2])

    respond_to do |format|
      if @thing_type2.save
        flash[:notice] = 'ThingType2 was successfully created.'
        format.html { redirect_to(@thing_type2) }
        format.xml  { render :xml => @thing_type2, :status => :created, :location => @thing_type2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thing_type2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thing_type2s/1
  # PUT /thing_type2s/1.xml
  def update
    @thing_type2 = ThingType2.find(params[:id])

    respond_to do |format|
      if @thing_type2.update_attributes(params[:thing_type2])
        flash[:notice] = 'ThingType2 was successfully updated.'
        format.html { redirect_to(@thing_type2) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thing_type2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thing_type2s/1
  # DELETE /thing_type2s/1.xml
  def destroy
    @thing_type2 = ThingType2.find(params[:id])
    @thing_type2.destroy

    respond_to do |format|
      format.html { redirect_to(thing_type2s_url) }
      format.xml  { head :ok }
    end
  end
end
