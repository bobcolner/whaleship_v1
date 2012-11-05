class SignupBoxesController < ApplicationController
  # GET /signup_boxes
  # GET /signup_boxes.json
  def index
    @signup_boxes = SignupBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @signup_boxes }
    end
  end

  # GET /signup_boxes/1
  # GET /signup_boxes/1.json
  def show
    @signup_box = SignupBox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @signup_box }
    end
  end

  # GET /signup_boxes/new
  # GET /signup_boxes/new.json
  def new
    @signup_box = SignupBox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @signup_box }
    end
  end

  # GET /signup_boxes/1/edit
  def edit
    @signup_box = SignupBox.find(params[:id])
  end

  # POST /signup_boxes
  # POST /signup_boxes.json
  def create
    @signup_box = SignupBox.new(params[:signup_box])

    respond_to do |format|
      if @signup_box.save
        format.html { redirect_to @signup_box, notice: 'Signup box was successfully created.' }
        format.json { render json: @signup_box, status: :created, location: @signup_box }
      else
        format.html { render action: "new" }
        format.json { render json: @signup_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /signup_boxes/1
  # PUT /signup_boxes/1.json
  def update
    @signup_box = SignupBox.find(params[:id])

    respond_to do |format|
      if @signup_box.update_attributes(params[:signup_box])
        format.html { redirect_to @signup_box, notice: 'Signup box was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @signup_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signup_boxes/1
  # DELETE /signup_boxes/1.json
  def destroy
    @signup_box = SignupBox.find(params[:id])
    @signup_box.destroy

    respond_to do |format|
      format.html { redirect_to signup_boxes_url }
      format.json { head :no_content }
    end
  end
end
