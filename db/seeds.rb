User.destroy_all
puts "Creating users"
u1 = User.create! name:"Tony", email:"tony@ga.co", password:"chicken"
u2 = User.create! name:"Luke", email:"luke@ga.co", password:"chicken"
u3 = User.create! name:"Josh", email:"josh@ga.co", password:"chicken"
puts "Created #{User.all.length} users"

Account.destroy_all
puts "Creating Accounts"
a1 = Account.create! name:"Everyday Spending", user:u3
a2 = Account.create! name:"Complete Assess", user:u2
a3 = Account.create! name:"Online Saver", user:u1
puts "Created #{Account.all.length} Accounts"

Transaction.destroy_all
puts "Creating Accounts"
t1 = Transaction.create! text:"Car", amount: -500, account:a2
t2 = Transaction.create! text:"Salary", amount: 2000, account:a2
t3 = Transaction.create! text:"Water Bill", amount: -300, account:a3
t3 = Transaction.create! text:"Salary", amount: 1800, account:a3
t3 = Transaction.create! text:"Phone Bill", amount: -100, account:a1
t3 = Transaction.create! text:"Salary", amount: 1900, account:a1
puts "Created #{Transaction.all.length} Transactions"
