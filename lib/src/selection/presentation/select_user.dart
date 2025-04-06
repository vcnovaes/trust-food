import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/mock-data/mock_data.dart'; 
import 'package:trust_food/src/home/presentation/seller_home.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart'; 

class SelectUser extends StatefulWidget {
  const SelectUser({super.key});

  static String route() => '/selectuser';

  @override
  SelectUserState createState() => SelectUserState();
}

class SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/trustfoodlogo.png'),
              const Text(
                'Selecione o Usuário',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF123859),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: mockSellers.length + mockUsers.length, 
                  itemBuilder: (BuildContext context, int index) {
                    final isSeller = index < mockSellers.length;
                    final user = isSeller ? mockSellers[index] : mockUsers[index - mockSellers.length];

                    return userItem(
                      user.email,
                      user.phone,
                      user.firstName,
                      user.lastName,
                      user.userType,
                      user.id,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userItem(
    String email,
    String phone,
    String firstName,
    String lastName,
    String userType,
    String userId,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromRGBO(15, 95, 166, 1),
        child: const Icon(Icons.person_outline_outlined, color: Colors.white),
      ),
      title: Text(
        "$firstName $lastName", 
        style: const TextStyle(
          fontFamily: 'Roboto',
          color: Color.fromRGBO(15, 95, 166, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        email,
        style: const TextStyle(fontFamily: 'Roboto', color: Color(0xFF123859)),
      ),
      trailing: Container(
        height: 20,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF94C213),
        ),
        alignment: Alignment.centerLeft,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            userType,
            style: const TextStyle(fontFamily: 'Roboto', color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        if (userType == 'Vendedor') {
          context.go(SellerHomePage.route(userId)); 
        } else {
          context.go(BuyerHomePage.route()); 
        }
      },
    );
  }
}
