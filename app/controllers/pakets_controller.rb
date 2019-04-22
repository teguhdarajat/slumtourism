class PaketsController < ApplicationController    
    before_action :find_paket, only: [:edit, :update, :show, :destory]
  
    def index
      @paket = Paket.all
    end
  
    def new
      @paket = Paket.new
    end
  
    def create
      @paket = Paket.new paket_params
      if @paket.save(paket_params)
        redirect_to action: "index", notice: "Data berhasil disimpan"
      else
        render 'new', notice: "Sayang sekali, data gagal disimpan"
      end
    end
  
    def show
    end
    
  
    def update
      if @paket.update paket_params
        redirect_to @paket, notice: "Data berhasil diperbarui"
      else
        render 'edit'
      end
    end
    
    def destroy
      @paket = Paket.friendly.find(params[:id])
      if @paket.present?
        @paket.destroy
      end
      redirect_to pakets_url
  end
  
    private
  
    def paket_params
      params.require(:paket).permit(:nama, :harga, :deskripsi, :maxpeople, :arrival, :image)
    end
  
    def find_paket
      @paket = Paket.friendly.find(params[:id])
    end
  
  
  
  
  end
  