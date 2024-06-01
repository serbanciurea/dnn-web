# class ProjectPortPolicy < ApplicationPolicy
#   # NOTE: Up to Pundit v2.3.1, the inheritance was declared as
#   # `Scope < Scope` rather than `Scope < ApplicationPolicy::Scope`.
#   # In most cases the behavior will be identical, but if updating existing
#   # code, beware of possible changes to the ancestors:
#   # https://gist.github.com/Burgestrand/4b4bc22f31c8a95c425fc0e30d7ef1f5

#   class Scope < ApplicationPolicy::Scope
#     # NOTE: Be explicit about which records you allow access to!
#     # def resolve
#     #   scope.all
#     # end
#     def index?
#       true # Everyone can view the index
#     end

#     def show?
#       true # Everyone can view a project port
#     end

#     def create?
#       user.admin? # Only admins can create
#     end

#     def new?
#       create?
#     end

#     def update?
#       user.admin? # Only admins can update
#     end

#     def edit?
#       update?
#     end

#     def destroy?
#       user.admin? # Only admins can destroy
#     end
#   end
# end

# app/policies/project_port_policy.rb
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
end
