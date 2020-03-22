class BankAccount
  attr_accessor :name, :balance, :status  
  
  def initialize(name)
    @name = name 
    @balance = 1000
    @status = 'open'
    @@account = []
  end 
  
  def deposit(money)
    @@account << money
  end 

end
