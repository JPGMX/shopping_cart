class ProductsController < ApplicationController
  # GET /Products
  # GET /Products.json
  def index
    @Products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Products }
    end
  end

  # GET /Products/1
  # GET /Products/1.json
  def show
    @Product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Product }
    end
  end

  # GET /Products/new
  # GET /Products/new.json
  def new
    @Product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Product }
    end
  end

  # GET /Products/1/edit
  def edit
    @Product = Product.find(params[:id])
  end

  # POST /Products
  # POST /Products.json
  def create
    @Product = Product.new(params[:Product])

    respond_to do |format|
      if @Product.save
        format.html { redirect_to @Product, notice: 'Product was successfully created.' }
        format.json { render json: @Product, status: :created, location: @Product }
      else
        format.html { render action: "new" }
        format.json { render json: @Product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Products/1
  # PUT /Products/1.json
  def update
    @Product = Product.find(params[:id])

    respond_to do |format|
      if @Product.update_attributes(params[:Product])
        format.html { redirect_to @Product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Products/1
  # DELETE /Products/1.json
  def destroy
    @Product = Product.find(params[:id])
    @Product.destroy

    respond_to do |format|
      format.html { redirect_to Products_url }
      format.json { head :no_content }
    end
  end
end
