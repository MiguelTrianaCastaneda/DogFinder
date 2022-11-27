class DogbreedsModel {
  DogbreedsModel(
      {required this.id, required this.namebreed, required this.status});
  int id;
  String namebreed;
  bool status;
}

List<DogbreedsModel> dogbreeds = [
  DogbreedsModel(id: 0, namebreed: "All Kinds", status: true),
  DogbreedsModel(id: 1, namebreed: "Pastor Aleman", status: false),
  DogbreedsModel(id: 2, namebreed: "Labrador", status: false),
  DogbreedsModel(id: 3, namebreed: "Pitbull", status: false),
  DogbreedsModel(id: 4, namebreed: "Labrador", status: false),
  DogbreedsModel(id: 5, namebreed: "Pug", status: false),
  DogbreedsModel(id: 6, namebreed: "Bulldog", status: false),
  DogbreedsModel(id: 7, namebreed: "Corgi", status: false),
  DogbreedsModel(id: 8, namebreed: "Pequines", status: false),
  DogbreedsModel(id: 9, namebreed: "Schitzu", status: false),
  DogbreedsModel(id: 10, namebreed: "Frensh Poodle", status: false),
  DogbreedsModel(id: 11, namebreed: "Pincher", status: false),
  DogbreedsModel(id: 12, namebreed: "Pastor Collie", status: false),
  DogbreedsModel(id: 13, namebreed: "Doberman", status: false),
  DogbreedsModel(id: 14, namebreed: "Pomerania", status: false),
  DogbreedsModel(id: 15, namebreed: "Chihuahua", status: false),
  DogbreedsModel(id: 16, namebreed: "Salchicha", status: false),
  DogbreedsModel(id: 17, namebreed: "Cocker Spaniel", status: false),
  DogbreedsModel(id: 18, namebreed: "Rottweiler", status: false),
  DogbreedsModel(id: 19, namebreed: "Dalmata", status: false),
  DogbreedsModel(id: 20, namebreed: "Husky Siberano", status: false),
];
