class PartnersController < ApplicationController
  def index
    @partners = Partner.all

    # Handle filtering by tag
    if params[:tag].present?
      @selected_tag = params[:tag]
      @filtered_partners = @partners.where(tag: @selected_tag)
    else
      @selected_tag = nil
      @filtered_partners = @partners
    end

    # Gather all unique tags for display in the sidebar
    @tags = Partner.distinct.pluck(:tag)
  end
end
