class IssuesController < ApplicationController
  def index
    @issues = github.issues.list(user: 'rails', repo: 'rails')
  end

  private
  def github
    Github.new
  end
end
