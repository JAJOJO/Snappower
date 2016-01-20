class PagesController < ApplicationController

  def index

  end
  def dashboard
    @tickets = Ticket.all
    @complaints = Complaint.all
    @actions = Action.all
    @styles = Style.all
    @products = Product.all
    @reports = Report.all
  end

end
