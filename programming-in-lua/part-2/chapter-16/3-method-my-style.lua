Account = { balance = 0 } ;

function Account:withdraw(v)
      self.balance = self.balance - v ;
end

function Account:deposit(v)
      self.balance = self.balance + v ;
end



Account:withdraw(200.00);
print(Account.balance);

Account:deposit(300.00);
print(Account.balance);


