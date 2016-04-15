class IssuesController < ApplicationController
  def index
    @issues = github.issues.list(user: 'rails', repo: 'rails', page: params['page'] || 1, per_page: 100)
  end

  private
  def github
    Github.new
  end
end
