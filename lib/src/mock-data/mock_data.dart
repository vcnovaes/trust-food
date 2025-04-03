class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String userType;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.userType,
  });
}

class Seller extends User {
  final String businessName;
  final int rating;
  final String homeImage;
  final String galleryImage1;
  final String galleryImage2;
  final String description;

  Seller({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String userType,
    required this.businessName,
    required this.rating,
    required this.homeImage,
    required this.galleryImage1,
    required this.galleryImage2,
    required this.description,
  }) : super(
         id: id,
         firstName: firstName,
         lastName: lastName,
         email: email,
         phone: phone,
         userType: userType,
       );
}

List<Seller> mockSellers = [
  Seller(
    id: '1',
    firstName: 'Gustavo',
    lastName: 'Lins',
    email: 'gustavo.lins10@gmail.com',
    phone: '99999-1111',
    userType: 'Vendedor',
    businessName: 'Pastel do Seu Gustavo',
    rating: 4,
    homeImage: 'assets/pastel_do_seu_gustavo_home.png',
    galleryImage1: 'assets/pastel_do_seu_gustavo_gallery_1.png',
    galleryImage2: 'assets/pastel_do_seu_gustavo_gallery_2.png',
    description:
        'Aqui no Pastel do Seu Gustavo, você vai saborear os pastéis mais crocantes e recheados da cidade!',
  ),
  Seller(
    id: '2',
    firstName: 'José',
    lastName: 'Costa',
    email: 'milhodoze@gmail.com',
    phone: '99999-2501',
    userType: 'Vendedor',
    businessName: 'Milho do Zé',
    rating: 5,
    homeImage: 'assets/milho_do_ze_home.png',
    galleryImage1: 'assets/milho_do_ze_gallery_1.png',
    galleryImage2: 'assets/milho_do_ze_gallery_2.png',
    description:
        'Aqui é o Zé! Meu milho é sempre fresquinho, cozido na hora. Venha provar o melhor milho da cidade!',
  ),
];

List<User> mockUsers = [
  User(
    id: '3',
    firstName: 'João',
    lastName: 'Silva',
    email: 'joao.silva@email.com',
    phone: '99999-1234',
    userType: 'Consumidor',
  ),
  User(
    id: '4',
    firstName: 'Maria',
    lastName: 'Oliveira',
    email: 'maria.oliveira@email.com',
    phone: '99999-5678',
    userType: 'Consumidor',
  ),
];
