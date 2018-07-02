// 1.Please create an Animal class that has only one String property species and one method makeSounds().
// 2.The property species needs to be read-only and set the value from its initializer.
// 3.Try to subclass the Animal class to Lion class, Elephant class, or what animals you like. (3 animals required)
// 4.Try to initialize these three Animal classes into instances, bring them to life.
// 5.Make sure they all have their sounds by overriding makeSounds() method from the superclass. The implementation of this method is quite simple, just print out the sounds. For example, print "roar" for lions.

class Animal {
    var species: String
   
    init (species: String) {
        self.species = species
    }
    
    func makeSounds() -> String {
     return "\(species) sound "
    }
}
// ---------------
class Lion: Animal {
    
    override func makeSounds() -> String {
        //print("roar")
        return "roar"
    }
}

// ----------------

class Cat: Animal {
    
    override func makeSounds() -> String {
        //print("miaow")
        return "miaow"
    }
}

// ----------------

class Dog: Animal {
    
    override func makeSounds() -> String {
        //print("bark")
        return "bark"
    }
}

// ----------------
let lion = Lion(species: "lion")
let cat = Cat(species: "cat")
let dog = Dog(species: "dog")

print(lion.makeSounds())
print(cat.makeSounds())
print(dog.makeSounds())



















