//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    // 2.
    
    func names(forFlavor flavor:String) -> [String]  {
    
        var nameWithSameFlavor : [String] = []
        
        for (eachName,eachFlavor) in favoriteFlavorsOfIceCream {
            
            if flavor == eachFlavor {
                
                nameWithSameFlavor.append(eachName)
            }
            
        }
        return (nameWithSameFlavor)
    }
    
    
    
    
    
    
    // 3.
    
    func count (forFlavor flavor:String) -> Int {
        
        var noLikeCount = 0
        
        for eachFlavor in favoriteFlavorsOfIceCream.values {
            
            if flavor == eachFlavor {
                
                noLikeCount += 1
            }
        }
        
        return noLikeCount
    }
    
    
    
    
    
    // 4.
   
    func flavor (forPerson:String) -> String? {
        
        
        
        for (person,flavor) in favoriteFlavorsOfIceCream {
            
            if forPerson == person {
                
                return flavor
            }
            
        }
        
        return nil
        
    }




    // 5.
    
    func replace(flavor:String, forPerson: String) -> Bool {
        
        
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            
            favoriteFlavorsOfIceCream[forPerson] = flavor
            
             return true
        }
        
           return false
        
        
        
    }

    
    
    
    
    
    
    // 6.
    
    func remove (person:String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] != nil {
            
            favoriteFlavorsOfIceCream[person] = nil
            
            return true
        }
        
        return false
        
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        
        var attendeesCount = 0
        
        for _ in favoriteFlavorsOfIceCream {
            
            attendeesCount += 1
        }
        
        return attendeesCount
    }
    
    
    
    
    
    
    
    // 8.
    
    
    func add(person:String, withFlavor:String) -> Bool {
        
        if favoriteFlavorsOfIceCream[person] == nil {
        
        favoriteFlavorsOfIceCream[person] = withFlavor
        
            return true
        }
        
        return false
    }
    
    
    
    
    
    
    // 9.
    
    func attendeelist() -> String {
        
        var listOfAttendee = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for name in allNames {
            
//            let person = name
            
            let lastPerson = allNames.last
            
            let flavor = favoriteFlavorsOfIceCream[name]!
            
            if name == lastPerson {
                
                
                
                listOfAttendee += ("\(name) likes \(flavor)")
            }

            else  {
                
                listOfAttendee += ("\(name) likes \(flavor)\n")
            }
            
            
        }
        
        print (listOfAttendee)
        return listOfAttendee
    }
    
    

    
    
    
    
    
    
    

}
