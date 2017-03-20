class Donation

  ALL = []

  def self.all
    ALL
  end

  attr_reader :backer, :project

  def initialize(backer, project)
    @backer = backer
    @project = project
    ALL << self # self is an instance of the donation class
  end

end
