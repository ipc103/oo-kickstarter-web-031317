class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    Donation.new(backer, self)
  end

  def backers
    donations.collect {|donation| donation.backer }
  end

  def donations
    Donation.all.select {|donation| donation.project == self}
  end

end


# backer = Backer.new('Usman')
# project = Project.new('The Coldest Day of the Year')
# project.add_backer(backer)
