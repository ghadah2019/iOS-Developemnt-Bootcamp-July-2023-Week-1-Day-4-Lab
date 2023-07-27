import UIKit

//1
enum Gender {
    
    case male
    case female
    case other
    func printItSelf(){
    print(self)
}
}

    let personIsmale: Gender = .male
    print(personIsmale)
    let personIsfemale: Gender = .female
    print(personIsfemale)

struct Car {
    var make: String
    var model: String
    var year: Int
}

var structCar: Car = Car(make: "BMW", model: "x3", year: 2023)
print(structCar)
var structCar2: Car = Car(make: "BMW", model: "x5", year: 2023)
print(structCar2)
class Person {
    var name: String
    var age: Int
    var gender: Gender
    var car: Car
    
    
    init ( name: String,  age: Int, gender: Gender, car: Car){
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
        
        
        
    }
    func printPersonClass () {
        print(name, age, gender, car)
    }
}
var instance = Person(name: "ahmed", age: 23, gender: .male, car: structCar )
instance.printPersonClass()
var instance2 = Person(name: "amjad", age: 23, gender: .female, car: structCar2)
instance2.printPersonClass()





//2
class BankAccount {
    
    var balance: Int
    
    init(balance: Int) {
        self.balance = balance
    }
    func depositMoney (amount:Int){
        balance += amount
        print("the amount of depoisted mooney is  \(amount), the new balance is \(balance)")
    }
    func withdrawMoney(amount: Int){
        if balance - amount >= 0{
            balance -= amount
            print("the amount of withdrow money is \(amount), the new balance is \(balance)")
        }
        else {
            print("insufficient the current balanceis  \(balance)")
        }
        }
    }

var accountNumber1 = BankAccount(balance: 5000)
var accountNumber2 = BankAccount(balance: 8000)
var accountNumber3 = BankAccount(balance: 400)
accountNumber1.depositMoney(amount: 2000)
accountNumber1.withdrawMoney(amount: 400)
accountNumber2.withdrawMoney(amount: 3000)
accountNumber2.depositMoney(amount: 200)
accountNumber3.withdrawMoney(amount: 500)
accountNumber3.depositMoney(amount: 1000)


//3

enum LoginError : Error{
    case invalidUsername
    case invalidPassword
}
func login (userName: Int, password: Int) throws -> String {
    if userName < 5 {
        print("the length of userName is less than 5")
        throw LoginError.invalidUsername
    }
    else if userName > 20  {
        print("the length of userName is greater than 20")
        throw LoginError.invalidUsername
        
        
    }
    if password < 5{
        print("the length of password is less than 5")
        throw LoginError.invalidPassword
    }
    else if password > 20  {
        print("the length of password is greater than 20")
        throw LoginError.invalidPassword
        
    
}
    return "the length is valid"
}

do {
    let user = try login(userName: 17, password: 9)
    print(user)
} catch {
    print(error)
}
do {
    let user1 = try login(userName: 30, password: 9)
    print(user1)
} catch {
    print(error)
}

do {
    let user2 = try login(userName: 17, password: 1)
    print(user2)
} catch {
    print(error)
}
