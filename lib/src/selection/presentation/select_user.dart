import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_food/src/home/domain/models/user_model.dart';
import 'package:trust_food/src/home/presentation/buyer_home.dart';
import 'package:trust_food/src/home/presentation/seller_home.dart';

class Selectuser extends StatefulWidget {
  const Selectuser({super.key});

  @override
  SelectUserState createState() => SelectUserState();
}

class SelectUserState extends State<Selectuser> {
  List<UserModel> users = [
    UserModel(
      email: "gustavo.lins10@gmail.com",
      phone: "99996666",
      firstName: "Gustavo",
      lastName: "Lins",
      userType: "Comerciante",
    ),
    UserModel(
      email: "albertob@gmail.com",
      phone: "99996666",
      firstName: "Alberto",
      lastName: "Bomfim",
      userType: "Consumidor",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/trustfoodlogo.png'),
              Text(
                'Selecione o usuário',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Color(0xFF123859),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (BuildContext context, int index) {
                    return userItem(
                      users[index].email,
                      users[index].phone,
                      users[index].firstName,
                      users[index].lastName,
                      users[index].userType,
                      index,
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
    int index,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: const Color.fromRGBO(15, 95, 166, 1),
        child: Icon(Icons.person_outline_outlined, color: Colors.white),
      ),
      title: Text(
        "$firstName$lastName",
        style: TextStyle(
          fontFamily: 'Roboto',
          color: Color.fromRGBO(15, 95, 166, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        email,
        style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF123859)),
      ),
      trailing: Container(
        height: 20,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF94C213),
        ),
        alignment: Alignment.centerLeft,
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            userType,
            style: TextStyle(fontFamily: 'Roboto', color: Colors.white),
          ),
        ),
      ),
      onTap: () {
        if (users[index].userType == "Consumidor") {
          context.go(BuyerHomePage.route());
        } else if (users[index].userType == "Comerciante") {
          context.go(SellerHomePage.route());
        }
      },
    );
  }
}
