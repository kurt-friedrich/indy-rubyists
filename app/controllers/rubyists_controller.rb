class RubyistsController < ApplicationController

  def index
    @rubyists = Octokit.search_users('location:Indianapolis language:Ruby', sort: 'joined', order: :asc)
    @ruby_users = @rubyists.items.map { |u| Octokit.user(u[:id]) }
  end

  def show
  end

  private


end
