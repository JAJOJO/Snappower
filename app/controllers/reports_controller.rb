class ReportsController < ApplicationController

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to '/dashboard'
    else
      render 'new'
    end
  end

  def show
    @report = Report.find(params[:id])

    # @scale = @report.scale
    # month, week, day
    @from = @report.date_beg
    @to   = @report.date_end


    if @report.scale == 'day'
      @scale = 1
    elsif @report.scale == 'week'
      @scale = 7
    # elsif @report.date_beg == 'month'
      # @scale = 30
    end

    # @start = '2016-01-01'.to_date
    @start = @report.date_beg
    # @to = '2016-01-31'.to_date
    @to = @report.date_end
    @date_array = Hash.new

    # array
    #   var this_array = [a,b,c,d]
    #   this_array[2] = c
    # Linked_list
    #   var this_list = {'a':'apple', 'b':'boat', 'c':'cat'}
    #   this_list['a'] = 'apple'
    #   this_list['b'] = 'boat'


    # complaint
    @complaint_hash = Hash.new
    @complaint_array = Complaint.uniq.pluck(:name)
    @complaint_array.each do |c|
      @complaint_hash[c] = Ticket.where(complaint:c).where("created_at >= ?", @report.date_beg).where("created_at <= ?", @report.date_end).count
    end
    @complaint_date_hash = Hash.new
    @complaint_array.each do |c|
      @complaint_date_hash[c] = Hash.new
      @start_temp = @start
      while @start_temp < @to
        @complaint_date_hash[c][@start_temp] =  Ticket.where(complaint:c).where("created_at >= ?", @start_temp).where("created_at < ?", @start_temp+@scale.days).count
        @start_temp += @scale.days
      end
    end










    @action_hash = Hash.new
    @action_array = Action.uniq.pluck(:name)
    @action_array.each do |c|
      @action_hash[c] = Ticket.where(action:c).where("created_at >= ?", @report.date_beg).where("created_at <= ?", @report.date_end).count
    end

    @style_hash = Hash.new
    @style_array = Style.uniq.pluck(:name)
    @style_array.each do |c|
      @style_hash[c] = Ticket.where(style:c).where("created_at >= ?", @report.date_beg).where("created_at <= ?", @report.date_end).count
    end

    @product_hash = Hash.new
    @product_array = Product.uniq.pluck(:name)
    @product_array.each do |c|
      @product_hash[c] = Ticket.where(product:c).where("created_at >= ?", @report.date_beg).where("created_at <= ?", @report.date_end).count
    end

  end










  def update
    @report = Report.find(params[:id])
    if @report.update_attributes(report_params)
      redirect_to(:action => 'show', :id => @report.id)
    else
      render 'show'
    end
  end

  private
    def report_params
      params.require(:report).permit(:name, :date_beg, :date_end, :scale)
    end

end
