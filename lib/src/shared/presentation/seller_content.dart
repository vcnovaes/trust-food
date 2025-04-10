import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/profile/presentation/seller_profile_screen.dart';
import 'package:trust_food/src/qrcode/presentation/qr_code_generator.dart';
import 'package:trust_food/src/mock-data/mock_data.dart';
import 'package:trust_food/src/gallery/presentation/gallery.dart';

class SellerContent extends StatefulWidget {
  final String sellerId;
  final bool isSellerView; // true for seller home, false for seller detail
  final VoidCallback onBackPressed;

  const SellerContent({
    super.key,
    required this.sellerId,
    required this.isSellerView,
    required this.onBackPressed,
  });

  @override
  SellerContentState createState() => SellerContentState();
}

class SellerContentState extends State<SellerContent> {
  Color brandBlue = Color(0xFF0F5FA6);

  @override
  Widget build(BuildContext context) {
    var seller = mockSellers.firstWhere((s) => s.id == widget.sellerId);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: widget.onBackPressed,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset(
              widget.isSellerView ? 'assets/log_out_button.png' : 'assets/left_arrow.png',
              height: 55,
              width: 55,
            ),
          ),
        ),
        actions: widget.isSellerView
            ? [
                Builder(
                  builder: (context) => IconButton(
                    icon: Image.asset(
                      'assets/profile_button.png',
                      height: 55,
                      width: 55,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
                const Divider(color: Color(0xFFD9D9D9)),
              ]
            : [],
      ),
      endDrawer: widget.isSellerView
          ? Drawer(
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 65,
                    ),
                    width: double.infinity,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: brandBlue,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                seller.businessName,
                                style: TextStyle(
                                  color: Color(0xFF123859),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.push(
                                    SellerProfileScreen.route(widget.sellerId),
                                  );
                                },
                                child: Text(
                                  'Detalhes da conta',
                                  style: TextStyle(
                                    color: Color(0xFF0F5FA6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFF0F5FA6),
                                    decorationThickness: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16.0,
                      bottom: 40,
                    ),
                  ),
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(
              seller.homeImage,
              width: MediaQuery.of(context).size.width,
              height: 240,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 32.0),
              child: Row(
                children: [
                  Text(
                    seller.businessName,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset('assets/green_check.png', height: 24, width: 24),
                ],
              ),
            ),
            if (widget.isSellerView)
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Aberto',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF123859),
                          ),
                        ),
                        SizedBox(width: 5),
                        Switch(
                          value: seller.open,
                          activeColor: Colors.green,
                          onChanged: (bool value) {
                            setState(() {
                              seller.open = value;
                              mockSellers
                                  .firstWhere((s) => s.id == widget.sellerId)
                                  .open = seller.open;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'Pode Mover-se',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF123859),
                          ),
                        ),
                        SizedBox(width: 5),
                        Switch(
                          value: seller.canMove,
                          activeColor: Colors.green,
                          onChanged: (bool value) {
                            setState(() {
                              seller.canMove = value;
                              mockSellers
                                  .firstWhere((s) => s.id == widget.sellerId)
                                  .canMove = seller.canMove;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: Row(
                children: [
                  Icon(Icons.star, color: Color(0xFFF2C305)),
                  SizedBox(width: 4),
                  Text(
                    '${seller.rating}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF123859),
                    ),
                  ),
                ],
              ),
            ),
            TextSection(description: seller.description),
            SizedBox(height: 16),
            if (widget.isSellerView) ...[
              GestureDetector(
                onTap: () {
                  context.push(QRCodeGeneratorScreen.route(widget.sellerId));
                },
                child: Image.asset(
                  'assets/QRcodebutton.png',
                  width: 350,
                  height: 50,
                ),
              ),
              SizedBox(height: 16),
            ],
            GestureDetector(
              onTap: () {
                context.push(GalleryScreen.route(widget.sellerId));
              },
              child: Image.asset('assets/gallery.png', width: 350, height: 50),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        description,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: Color(0xFF123859),
        ),
        softWrap: true,
      ),
    );
  }
} 
