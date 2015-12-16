class StaticPagesController < ApplicationController
  def start_page
    @word = Word.new
  end
end
