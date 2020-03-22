class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender,receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end 
  
end
