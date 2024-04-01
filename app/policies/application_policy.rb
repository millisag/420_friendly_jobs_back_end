# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end
  
  # User is a company and created this job
  def created_by_company?
    user.company? && record.company_id == user.id 
  end

  # Only admin users or companies can create jobs
  def create?
    user.admin? || user.company?
  end

  # Only admin users or companies that created current job can update it
  def update?
    user.admin? || created_by_company? 
  end

  # Only admin users or companies that created current job can delete it
  def destroy?
    user.admin? || created_by_company? 
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
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
