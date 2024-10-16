class CoursePolicy < ApplicationPolicy

  def index?
    true
  end

  def show?
    true  # Define your logic here
  end

  def create?
    user && user.admin?  # Example: only admins can create courses
  end

  def show_by_name
    true
  end

  def update?
    user && user.admin?  # Example: only admins can update courses
  end

  def destroy?
    user && user.admin?  # Example: only admins can delete courses
  end

  def edit?
    user && user.admin?
  end

  def render_post_partial?
    true
  end

  def register_interest?
    true
  end

  class Scope < Scope
    def resolve
        scope.all
    end
  end

end
