class MicrohoodsController < ApplicationController
  # GET /microhoods
  # GET /microhoods.xml
  def index
    @microhoods = Microhood.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microhoods }
    end
  end

  # GET /microhoods/1
  # GET /microhoods/1.xml
  def show
    @microhood = Microhood.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @microhood }
    end
  end

  # GET /microhoods/new
  # GET /microhoods/new.xml
  def new
    @microhood = Microhood.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @microhood }
    end
  end

  # GET /microhoods/1/edit
  def edit
    @microhood = Microhood.find(params[:id])
  end

  # POST /microhoods
  # POST /microhoods.xml
  def create
    @microhood = Microhood.new(params[:microhood])

    respond_to do |format|
      if @microhood.save
        format.html { redirect_to(@microhood, :notice => 'Microhood was successfully created.') }
        format.xml  { render :xml => @microhood, :status => :created, :location => @microhood }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @microhood.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microhoods/1
  # PUT /microhoods/1.xml
  def update
    @microhood = Microhood.find(params[:id])

    respond_to do |format|
      if @microhood.update_attributes(params[:microhood])
        format.html { redirect_to(@microhood, :notice => 'Microhood was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @microhood.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microhoods/1
  # DELETE /microhoods/1.xml
  def destroy
    @microhood = Microhood.find(params[:id])
    @microhood.destroy

    respond_to do |format|
      format.html { redirect_to(microhoods_url) }
      format.xml  { head :ok }
    end
  end
end
