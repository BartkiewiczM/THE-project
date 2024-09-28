class SubscriptionsController < ApplicationController
  def index
    # Mock data for subscriptions
    @subscriptions = [
      { name: 'Netflix', cost: 15.99, tags: ['Entertainment', 'Video Streaming'] },
      { name: 'HBO Max', cost: 14.99, tags: ['Entertainment', 'Video Streaming'] },
      { name: 'Amazon Prime Video', cost: 12.99, tags: ['Entertainment', 'Video Streaming', 'Shopping'] },
      { name: 'Spotify', cost: 9.99, tags: ['Music Streaming'] },
      { name: 'Disney+', cost: 7.99, tags: ['Entertainment', 'Video Streaming'] }
    ]

    # Handle search by name
    if params[:query].present?
      @subscriptions = @subscriptions.select { |s| s[:name].downcase.include?(params[:query].downcase) }
    end

    # Handle filtering by tags
    if params[:tag].present?
      @subscriptions = @subscriptions.select { |s| s[:tags].include?(params[:tag]) }
    end

    # Available tags for filtering
    @available_tags = ['Entertainment', 'Video Streaming', 'Music Streaming', 'Shopping']
  end
end
