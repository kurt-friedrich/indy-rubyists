class RubyistsController < ApplicationController

  def index
    options = { per_page:100, order:"asc", sort:"joined" }
    rubyists = Octokit.search_users('location:Indianapolis language:Ruby', options)
    @ruby_users = rubyists.items.map { |u| Octokit.user(u[:id]) }
  end

  def show
  end

  private


end
