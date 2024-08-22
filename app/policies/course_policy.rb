class CoursePolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true  # Define your logic here
  end

  def create?
    user.admin?  # Example: only admins can create courses
  end

  def update?
    user.admin?  # Example: only admins can update courses
  end

  def destroy?
    user.admin?  # Example: only admins can delete courses
  end

  def edit?
    user.admin?
  end

  def filter_by_category?
    true
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.none  # Example: non-admins can't see any courses
      end
    end
  end

end
