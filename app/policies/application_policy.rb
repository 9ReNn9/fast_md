# frozen_string_literal: true

class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == article.user
  end
 
  def destroy?
    return true if user.present? && user == article.user
  end
 
  private
 
    def article
      record
    end
end

  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :user, :scope
  end
end


