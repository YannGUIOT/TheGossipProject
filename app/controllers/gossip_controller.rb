class GossipController < ApplicationController
    def show
        @gossips = Gossip.all 
    end
    def each
        @gossips = Gossip.find(params[:id])
    end
end