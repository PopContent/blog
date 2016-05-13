class LeadsController < ApplicationController
  before_action :logged_in_user, except: [:create]

  # GET /leads
  # GET /leads.json
  def index
    @leads = Lead.all
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(lead_params)
    respond_to do |format|
      if @lead.save
        format.json { render text: 'Entraremos em contato o mais rápido possível!', status: 200 }
      else
        format.json { render text: @lead.errors.full_messages.to_sentence, status: 400 }
      end
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead = Lead.find(params[:id])
    @lead.destroy
    respond_to do |format|
      format.html { redirect_to leads_url, notice: 'Lead was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def lead_params
      params.require(:lead).permit(:name, :email)
    end
end
