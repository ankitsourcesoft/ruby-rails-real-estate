class PublicController < ApplicationController
  def main
    @proparties = Proparty.latest
  end
end
