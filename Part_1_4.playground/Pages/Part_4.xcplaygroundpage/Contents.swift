// 1.Please create a new Protocol Characteristics. It has a read-only Enum property foodType of FoodType which contains three cases, carnivores, herbivores, and omnivores.
// 2.Please make all animals conforms to the Protocol Characteristics. The default foodType of superclass Animal is omnivores and override it for Animal subclasses.
// -------- part4
protocol Characteristics {
    var foodType: FoodType { get }
}


enum  FoodType {
    case carnivores
    case herbivores
    case omnivores
}




class Animal: Characteristics {
    var foodType: FoodType {return .omnivores}
    
    var species: String
    
    // part3
    enum Gender {
        case male
        case female
    }
    
    init (species: String) {
        self.species = species
    }
    
    func makeSounds() -> String {
        return "\(species) sound "
    }
}
// ------- Lion --------
class Lion: Animal {
    let age = 4  //part2
    let gender: Gender = .male
    let name = "lion"
    override var foodType: FoodType {return .carnivores }
    
    override func makeSounds() -> String {
        
        return "roar"
    }
}

// -------- Cat --------

class Cat: Animal {
    let age = 6  //part2
    let gender: Gender = .female
    let name = "cat"
    override var foodType: FoodType { return.herbivores }
    
    override func makeSounds() -> String {
        return "miaow"
    }
}

// -------- Dog ----------

class Dog: Animal {
    let age = 7 // part2
    let gender: Gender = .male
    let name = "dog"
    override var foodType: FoodType { return.omnivores }
    
    override func makeSounds() -> String {
        return "bark"
    }
}

// ---------------- //part3 add gender:___
let lion = Lion(species: "lion")
let cat = Cat(species: "cat")
let dog = Dog(species: "dog")


// ******* patr2 ****************
// ---------- Zoo ----------------
class Zoo {
    let animals:  [Animal] = [lion, cat, dog]
    // 因animals要引入各種動物, 要將type改為[Animal]而非[String], 兩者無關連
    var maleAnimals: [String] = []
    var femaleAnimals: [String] = []
    
    func washAnimals() {
        for AnimalsSpecies in animals {
            print ("Washed \(AnimalsSpecies.species)")
        }
    }
    
    // part3 -----------------------------
    func computed()  {
        // ------------ lion ---------------------
        switch lion.gender {
        case .male: maleAnimals.append(lion.name)
        default: femaleAnimals.append(lion.name)
        }
        
        // ------------- cat ---------------------
        switch cat.gender {
        case .male:
            if cat.age >= lion.age {
                maleAnimals.insert(cat.name, at: 0)
            } else {
                maleAnimals.append(cat.name)
            }
        default:
            if cat.age >= lion.age {
                femaleAnimals.insert(cat.name, at: 0)
            } else {
                femaleAnimals.append(cat.name)
            }
        }
        // ------------- dog -----------------------
        switch dog.gender {
        case .male:
            if dog.age >= cat.age && dog.age >= lion.age {
                maleAnimals.insert(dog.name, at: 0)
            } else if (dog.age <= cat.age && dog.age >= lion.age) || (dog.age >= cat.age && dog.age >= lion.age)
            {
                maleAnimals.insert(dog.name, at: 1)
                
            } else {
                maleAnimals.append(dog.name)
            }
        default:
            if dog.age >= cat.age && dog.age >= lion.age {
                femaleAnimals.insert(dog.name, at: 0)
            } else if (dog.age <= cat.age && dog.age >= lion.age) || (dog.age >= cat.age && dog.age >= lion.age)
            {
                femaleAnimals.insert(dog.name, at: 1)
                
            } else {
                femaleAnimals.append(dog.name)
            }
        }
    }
    
    
}

let zoo = Zoo.init()
zoo.washAnimals()

zoo.computed()
print(zoo.maleAnimals,"\n", zoo.femaleAnimals )

print ("lion foodType \(lion.foodType)\n cat foodType \(cat.foodType)\n dog foodType \(dog.foodType)" )















