class Seller {
  final String id; // ID
  final String businessName; // Nome do serviço
  final int rating; // Quantidade de estrelas
  final String homeImage; // Imagem para a home do vendedor
  final String galleryImage1; // Primeira imagem para a galeria
  final String galleryImage2; // Segunda imagem para a galeria
  final String description; // Descrição do vendedor

  Seller({
    required this.id, // ID
    required this.businessName, // Nome do serviço
    required this.rating, // Quantidade de estrelas
    required this.homeImage, // Imagem para a home
    required this.galleryImage1, // Primeira imagem da galeria
    required this.galleryImage2, // Segunda imagem da galeria
    required this.description, // Descrição do vendedor
  });
}

List<Seller> mockSellers = [
  Seller(
    id: '1', // ID
    businessName: 'Pastel do Seu Gustavo', // Nome do serviço
    rating: 4, // Quantidade de estrelas
    homeImage: 'assets/pastel_do_seu_gustavo_home.png', // Imagem da home
    galleryImage1: 'assets/pastel_do_seu_gustavo_gallery_1.png', // Primeira imagem da galeria
    galleryImage2: 'assets/pastel_do_seu_gustavo_gallery_2.png', // Segunda imagem da galeria
    description: 'Aqui no Pastel do Seu Gustavo, você vai saborear os pastéis mais crocantes e recheados da cidade. Feitos na hora e com ingredientes frescos, garantimos o sabor que você tanto procura. Venha conferir!' // Descrição do vendedor
  ),
  Seller(
    id: '2', // ID
    businessName: 'Milho do Zé', // Nome do serviço
    rating: 5, // Quantidade de estrelas
    homeImage: 'assets/milho_do_ze_home.png', // Imagem da home
    galleryImage1: 'assets/milho_do_ze_gallery_1.png', // Primeira imagem da galeria
    galleryImage2: 'assets/milho_do_ze_gallery_2.png', // Segunda imagem da galeria
    description: 'Aqui é o Zé! Meu milho é sempre fresquinho, cozido na hora e com aquele tempero especial. Venha dar uma mordida e se deliciar com o melhor milho da cidade!' // Descrição do vendedor
  ),
];
