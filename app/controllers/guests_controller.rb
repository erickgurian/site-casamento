class GuestsController < ApplicationController
  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to '/confirme_sua_presenca', notice: 'Presença confirmada!'
    else
      redirect_to '/confirme_sua_presenca', alert: 'Erro'
    end
  end

  def show
    @guest = Guest.find(params[:id])
    render layout: 'panel'
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :email, :attend, :subject, :comment)
  end
end