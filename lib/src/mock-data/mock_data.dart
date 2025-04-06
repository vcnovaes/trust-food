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
  final String qrCodeLink;

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
    required this.qrCodeLink,
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
    businessName: 'Pastel do Seu Gustavo',
    rating: 4,
    homeImage: 'assets/pastel_do_seu_gustavo_home.png',
    galleryImage1: 'assets/pastel_do_seu_gustavo_gallery_1.png',
    galleryImage2: 'assets/pastel_do_seu_gustavo_gallery_2.png',
    description:
        'Aqui no Pastel do Seu Gustavo, você vai saborear os pastéis mais crocantes e recheados da cidade!',
    qrCodeLink:
        'https://scontent-atl3-2.cdninstagram.com/o1/v/t2/f2/m86/AQMDeg2y3b0p4ucKzErysIdgT6gE2HJoOvXJ4GrIQdzU9Hh6pSXXoX0bKKYZ1HFf-aJb_Mw5ufRhqkQwdbfIakCq9y2srjWeJc98NBA.mp4?_nc_cat=104&_nc_sid=5e9851&_nc_ht=scontent-atl3-2.cdninstagram.com&_nc_ohc=Aaf5IKfb-coQ7kNvgFHjYqZ&efg=eyJ2ZW5jb2RlX3RhZyI6Inhwdl9wcm9ncmVzc2l2ZS5JTlNUQUdSQU0uQ0xJUFMuQzMuNzIwLmRhc2hfYmFzZWxpbmVfMV92MSIsInhwdl9hc3NldF9pZCI6MTE5NjQxNjE0NTMyODY2MSwidmlfdXNlY2FzZV9pZCI6MTAwOTksImR1cmF0aW9uX3MiOjU5LCJ1cmxnZW5fc291cmNlIjoid3d3In0%3D&ccb=17-1&vs=ec111ff12515765d&_nc_vs=HBksFQIYUmlnX3hwdl9yZWVsc19wZXJtYW5lbnRfc3JfcHJvZC82NDRCRUI4RUM3MEFCMDk1NzVCMjNBNEZFNkUwNzI5NF92aWRlb19kYXNoaW5pdC5tcDQVAALIAQAVAhg6cGFzc3Rocm91Z2hfZXZlcnN0b3JlL0dPMXlFeDB2UzFqTEJBNEVBQ1JaVjJBVWJUWXpicV9FQUFBRhUCAsgBACgAGAAbAogHdXNlX29pbAExEnByb2dyZXNzaXZlX3JlY2lwZQExFQAAJqqoxPXKiKAEFQIoAkMzLBdATdItDlYEGRgSZGFzaF9iYXNlbGluZV8xX3YxEQB1_gcA&_nc_zt=28&oh=00_AYFIFGrMXFrgR9H1JP0NmwAlBjDyrr05sTR4LJo9qZzeEw&oe=67F07269',
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
    qrCodeLink: 'https://example.com/qrcode_milho',
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
