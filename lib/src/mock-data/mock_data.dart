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

class Review {
  final String id;
  final String userId;
  final String sellerId;
  final String comment;
  final double rating;

  Review({
    required this.id,
    required this.userId,
    required this.sellerId,
    required this.comment,
    required this.rating,
  });
}

class Seller extends User {
  final String businessName;
  final double rating;
  final String homeImage;
  final String galleryImage1;
  final String galleryImage2;
  final String description;
  bool canMove;
  bool open;

  Seller({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.phone,
    required super.userType,
    required this.businessName,
    required this.rating,
    required this.homeImage,
    required this.galleryImage1,
    required this.galleryImage2,
    required this.description,
    required this.canMove,
    required this.open,
  });
}

List<Seller> mockSellers = [
  Seller(
    id: '1',
    firstName: 'Gustavo',
    lastName: 'Lins',
    email: 'gustavo.lins10@gmail.com',
    phone: '99999-1111',
    userType: 'Vendedor',
    canMove: false,
    open: true,
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
    canMove: false,
    open: true,
    businessName: 'Milho do Zé',
    rating: 5,
    homeImage: 'assets/milho_do_ze_home.png',
    galleryImage1: 'assets/milho_do_ze_gallery_1.png',
    galleryImage2: 'assets/milho_do_ze_gallery_2.png',
    description:
        'Aqui é o Zé! Meu milho é sempre fresquinho, cozido na hora. Venha provar o melhor milho da cidade!',
  ),
  Seller(
    id: '3',
    firstName: 'Neide',
    lastName: 'Campos',
    email: 'churrosdaneide@email.com',
    phone: '99239-7744',
    userType: 'Vendedor',
    canMove: true,
    open: true,
    businessName: 'Churros da Neide',
    rating: 5,
    homeImage: 'assets/churros_da_neide_home.png',
    galleryImage1: 'assets/churros_da_neide_gallery_1.png',
    galleryImage2: 'assets/churros_da_neide_gallery_2.png',
    description:
        'Parada obrigatória pra quem passa pelo Parque 13 de Maio! Churros de diversos sabores',
  ),
  Seller(
    id: '4',
    firstName: 'Larissa',
    lastName: 'Vieira',
    email: 'laridoacai@email.com',
    phone: '98765-4433',
    userType: 'Vendedor',
    canMove: false,
    open: true,
    businessName: 'Lari do Açaí',
    rating: 4.8,
    homeImage: 'assets/lari_do_acai_home.png',
    galleryImage1: 'assets/lari_do_acai_gallery_1.png',
    galleryImage2: 'assets/lari_do_acai_gallery_2.png',
    description:
        'Açaí geladinho, venha experimentar! Perfeito pro calor de Recife.',
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

List<Review> mockReviews = [
  Review(
    id: '1',
    userId: '3',
    sellerId: '1',
    comment: 'Ótimo pastel, muito saboroso!',
    rating: 5,
  ),
  Review(
    id: '2',
    userId: '4',
    sellerId: '2',
    comment: 'Milho muito bom, recomendo!',
    rating: 4.5,
  ),
  Review(
    id: '3',
    userId: '3',
    sellerId: '3',
    comment: 'Churros deliciosos, voltarei com certeza!',
    rating: 5,
  ),
];
