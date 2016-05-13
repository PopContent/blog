class StaticPagesController < ApplicationController
  def home
    @leads_count = Lead.count
  end
end
