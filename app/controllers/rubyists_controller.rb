class RubyistsController < ApplicationController

  def index
    @users = github.search_users('location:Indianapolis language:Ruby')
  end

  def show
  end

  private

  def github
    @github ||= Octokit::Client.new(access_token: ENV['github_access_token'])
  end

end
