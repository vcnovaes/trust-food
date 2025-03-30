class Seller {
  final String id;
  final String businessName;
  final int rating; // quantidade de estrelas
  final String homeImage; // Imagem para a home do vendedor
  final String galleryImage1; // Primeira imagem para a galeria
  final String galleryImage2; // Segunda imagem para a galeria

  Seller({
    required this.id,
    required this.businessName,
    required this.rating,
    required this.homeImage, // Imagem para a home
    required this.galleryImage1, // Primeira imagem para a galeria
    required this.galleryImage2, // Segunda imagem para a galeria
  });
}

List<Seller> mockSellers = [
  Seller(
    id: '1',
    businessName: 'Coco do Seu Gustavo',
    rating: 4,
    homeImage: 'assets/coco_do_seu_gustavo_home.png', // Imagem da home
    galleryImage1: 'assets/coco_do_seu_gustavo_gallery_1.png', // Primeira imagem da galeria
    galleryImage2: 'assets/coco_do_seu_gustavo_gallery_2.png', // Segunda imagem da galeria
  ),
  Seller(
    id: '2',
    businessName: 'Milho do Zé',
    rating: 5,
    homeImage: 'assets/milho_do_ze_home.png', // Imagem da home
    galleryImage1: 'assets/milho_do_ze_gallery_1.png', // Primeira imagem da galeria
    galleryImage2: 'assets/milho_do_ze_gallery_2.png', // Segunda imagem da galeria
  ),
];
