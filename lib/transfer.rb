class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount 
    @status = "pending"
  end 
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    else 
      false 
    end 
  end 
  
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    elsif
      !@sender.valid? || @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end 
  end 
  
end
