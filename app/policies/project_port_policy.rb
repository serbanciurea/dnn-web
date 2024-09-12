
class ProjectPortPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
        scope.all
    end
  end

  def index?
    user.admin?
  end

  def show?
    user.admin?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  def add_photo?
    user.admin?
  end

  def remove_photo?
    user.admin?
  end

end
