class TicketsController < ApplicationController

  def new
    @ticket = Ticket.new

    @complaint_list = Complaint.all
    @complaint_array = []
    @complaint_list.each do |c|
      @complaint_array.push(c.name)
    end

    @action_list = Action.all
    @action_array = []
    @action_list.each do |c|
      @action_array.push(c.name)
    end

    @style_list = Style.all
    @style_array = []
    @style_list.each do |c|
      @style_array.push(c.name)
    end

    @product_list = Product.all
    @product_array = []
    @product_list.each do |c|
      @product_array.push(c.name)
    end
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to '/dashboard'
    else
      render 'new'
    end
  end

  private
    def ticket_params
      params.require(:ticket).permit(:quantity, :price, :notes, :complaint, :action, :style, :product)
    end


end
