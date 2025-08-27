import 'package:flutter/material.dart';
import 'package:flutter_food_ordering_app/components/search_input.dart';
import 'package:flutter_food_ordering_app/screens/cart.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static final List<Map<String, String>> foods = [
    {"label": "Burger", "image": "assets/images/hamburger.png"},
    {"label": "Pizza", "image": "assets/images/pizza.png"},
    {"label": 'Noodles', "image": "assets/images/instant-noodles.png"},
    {"label": "Chicken", "image": "assets/images/chicken.png"},
    {"label": "Vegetar..", "image": "assets/images/melonpan.png"},
    {"label": "Cake", "image": "assets/images/cake.png"},
    {"label": 'Beer', "image": "assets/images/beer.png"},
    {"label": 'Others', "image": "assets/images/melonpan.png"}
  ];

  static final List<Widget> _screens = [
    Dashboard(),
    Cart(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = 0;
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => _screens[index]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF1E1E1E),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0XFF1E1E1E).withValues(alpha: 0.5),
          selectedItemColor: Color(0XFF02C543),
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0XFF1E1E1E),
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: 'Wallet',
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                'assets/images/profile-img.png',
                              )),
                          SizedBox(width: 13),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    'John K Square',
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(width: 10),
                                  Image.asset('assets/images/polygon.png')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                            child: Image.asset('assets/images/bell.png'),
                          ),
                          SizedBox(width: 15),
                          SizedBox(
                            height: 25,
                            child: Image.asset('assets/images/search.png'),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SearchInput(
                          hintText: "Search your interesting books...",
                          icon: Icon(Icons.search, color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Special Offers",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      Text(
                        "See more...",
                        style: GoogleFonts.poppins(
                            color: Color(0XFF02C543),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(height: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/images/burger.png',
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      SizedBox(height: 15),
                      GridView.count(
                        crossAxisCount: 4, // 4 items per row
                        shrinkWrap: true, // so it takes only needed height
                        padding: EdgeInsets.zero,
                        crossAxisSpacing: 30,
                        mainAxisSpacing: 20,
                        physics:
                            NeverScrollableScrollPhysics(), // let parent handle scrolling
                        children: foods.map((food) {
                          return Column(
                            children: [
                              Image.asset(food["image"]!, height: 40),
                              const SizedBox(height: 6),
                              Text(
                                food["label"]!,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Weekly Special",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                              color: Color(0XFF02C543),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        )
                      ]),
                  SizedBox(height: 40),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 165,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Positioned(
                                  top: -30,
                                  left: 30,
                                  right: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                        'assets/images/veges.png',
                                        height: 95,
                                        width: 60,
                                        fit: BoxFit.cover),
                                  )),
                              Positioned(
                                  top: 30,
                                  right: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                        'assets/images/promo.png',
                                        fit: BoxFit.cover),
                                  ))
                            ],
                          ),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 165,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Positioned(
                                  top: -30,
                                  left: 30,
                                  right: 30,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                        'assets/images/chicken-yes.png',
                                        height: 95,
                                        width: 60,
                                        fit: BoxFit.cover),
                                  )),
                              Positioned(
                                  top: 30,
                                  right: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                        'assets/images/promo.png',
                                        fit: BoxFit.cover),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ))),
        ));
  }
}
