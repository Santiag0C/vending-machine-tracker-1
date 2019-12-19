class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machine = Machine.find(params[:id])
    a = 0
    @machine.contents.each do |x|
      a += x.price
    end
    if @machine.contents.count != 0
      @a = a/@machine.contents.count
    end
  end
end
