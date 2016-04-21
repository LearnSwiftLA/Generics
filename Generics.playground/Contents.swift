//: Playground - noun: a place where people can play

protocol Animal {}

enum Dog: Animal {}
enum Cat: Animal {}
enum Kangaroo: Animal {}

struct Pet<Animal> {}

func createPet() {
    let animal = Pet<Dog>()
}
