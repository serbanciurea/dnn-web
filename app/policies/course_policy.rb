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

  # def duplicate?
  #   # Define the authorization logic for duplicating a course.
  #   # For example, only admins or the original creator of the course can duplicate it.
  #   user.admin?
  # end

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

  # def filter_by_category?
  #   true
  # end

  def render_post_partial?
    true
  end

  class Scope < Scope
    def resolve
        scope.all
    end
  end

end
