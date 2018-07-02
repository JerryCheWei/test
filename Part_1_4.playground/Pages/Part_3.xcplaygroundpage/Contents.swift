// 1.Please define an Enum Gender includes two cases, male and female.
// 2.Add a property gender to Animal class. It needs to be set in the initialization, and can’t be changed after that.
// 3.Add two computed Array properties maleAnimals and femaleAnimals for Zoo class. They should return the animals with the same gender.
// 4.Try to sort animals by their ages in descending order. (Please use sort method provided by Array. Pass it a closure and get the sorted result)

class Animal {
    var species: String
    
    // part3
    enum Gender {
        case male
        case female
    }
    
    
    init (species: String ) {
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
    
    override func makeSounds() -> String {

        return "roar"
    }
}

// -------- Cat --------

class Cat: Animal {
    let age = 6  //part2
    let gender: Gender = .female
    let name = "cat"
    
    override func makeSounds() -> String {
        return "miaow"
    }
}

// -------- Dog ----------

class Dog: Animal {
    let age = 7 // part2
    let gender: Gender = .male
    let name = "dog"
    
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
    var animals:  [Animal] = [lion, cat, dog]
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
















