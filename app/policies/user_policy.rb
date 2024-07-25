class UserPolicy < ApplicationPolicy
  def show?
    user.admin? || user == record
  end

  def index?
    user.admin?
  end

  def approve?
    user.admin?
  end

  def reject?
    user.admin?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve

      if user.admin?
        scope.all
      else
        scope.where(id: user.id)
      end

    end

  end
end
