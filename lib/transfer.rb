class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    else
      
    end 
  end 
  
end
