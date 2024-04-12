// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:telodigo/ui/pages/anuncios%20anfitrion/anunciosanfitrion.dart';
import 'package:telodigo/ui/pages/perfil/perfil.dart';
import 'package:telodigo/ui/pages/sign_in/sign_in.dart';
import 'package:telodigo/ui/pages/sign_up/sign_up.dart';

class HomeAnfitrion extends StatefulWidget {
  const HomeAnfitrion({super.key});

  @override
  State<HomeAnfitrion> createState() => _HomeAnfitrionState();
}

class _HomeAnfitrionState extends State<HomeAnfitrion> {
   int _currentIndex = 0;

  final Screens = [
    const AnunciosAnfitrion(),
    sign_in(),
    sign_up(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screens[_currentIndex],
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 29, 7, 48),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: (index) => {setState(() {
              _currentIndex = index;
            })},
            backgroundColor: Color.fromARGB(255, 29, 7, 48),
            iconSize: 20,
            color: Colors.white,
            activeColor: Colors.white,
            gap: 7,
            tabBackgroundColor: Color.fromARGB(255, 135, 109, 156),
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(
                icon: Icons.apartment_outlined,
                text: "Anuncios",
              ),
              GButton(
                icon: Icons.forum,
                text: "Chat",
              ),
              GButton(
                icon: Icons.leaderboard_rounded,
                text: "Balance",
              ),
              GButton(
                icon: Icons.person,
                text: "Perfil",
              ),
            ],
          ),
        ),
      
    );
  }
}