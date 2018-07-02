// 1.Please create a new class called Zoo with one property animals which is an array of Animal class.
// 2.Try to initialize a new instance zoo from Zoo class, and then push all animals you created previously into animals array.
// 3.Try to add another Int property age to all animals, and assign values to them.
// 4.Add a method washAnimals() to Zoo class. It will loop through animals and print out Washed \(Animal Species) for each.

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
    let age: Int = 5  //part2
    let name = "lion"
    override func makeSounds() -> String {
        
        //print("roar")
        return "roar"
    }
}

// ----------------

class Cat: Animal {
    let age: Int = 3  //part2
    let name = "cat"
    override func makeSounds() -> String {
        
        //print("miaow")
        return "miaow"
    }
}

// ----------------

class Dog: Animal {
    let age: Int = 4 // part2
    let name = "dog"
    override func makeSounds() -> String {
        
        //print("bark")
        return "bark"
    }
}

// ----------------
let lion = Lion(species: "lion")
let cat = Cat(species: "cat")
let dog = Dog(species: "dog")

// ******* patr2 ****************

class Zoo {
    var animals: [Animal] = [ lion, cat, dog]
    
    
    func washAnimals() {
        for AnimalsSpecies in animals {
            print ("Washed \(AnimalsSpecies.species)")
        }
    }
}
    
    let zoo = Zoo.init()
    zoo.washAnimals()


















