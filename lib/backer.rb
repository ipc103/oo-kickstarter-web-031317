class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    Donation.new(self, project)
  end

  def donations
    # iterates over all the donations
    # return an array of the ones where the backer matches
    # this backer i.e. self
    Donation.all.select do |donation|
      donation.backer == self
    end
  end

  def backed_projects
    ## Iterate over my collection of donations
    self.donations.collect do |donation|
      donation.project
    ## return a new array of each donations project
  end
  end
end

backer = Backer.new('Usman')
project = Project.new('The Coldest Day of the Year')

donation = Donation.new(backer, project)

# backer = Backer.new('Anna')
# project = Project.new('Mold Magazine')
# backer.back_project(project)
#
# class SomethingWeird
#
#   attr_reader :backers
#
#   def initialize
#     @backers = []
#   end
#
# end
#
#
# something_weird = SomethingWeird.new
#
# backer.back_project(something_weird)
