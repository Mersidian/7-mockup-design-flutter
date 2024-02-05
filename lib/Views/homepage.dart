import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/ps_button.dart';
import 'Components/product_item.dart';
import 'proflie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _selectedItemColor = Colors.white;
  final _unselectedItemColor = Colors.white;
  final _selectedBgColor = const Color(0xFF031C3E);
  final _unselectedBgColor = const Color(0xFF00439c);

  int _selectedIndex = 0;

  int isMenuItem1Selected = 0;

  static const List<Widget> widgetOptions = <Widget>[ProductItem(), Profile()];

  String appBarTitle() {
    if (isMenuItem1Selected == 0) {
      return 'หน้าแรก';
    } else {
      return 'ข้อมูลส่วนตัว';
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getBgColor(int index) =>
      _selectedIndex == index ? _selectedBgColor : _unselectedBgColor;

  Color _getItemColor(int index) =>
      _selectedIndex == index ? _selectedItemColor : _unselectedItemColor;

  Widget _buildIcon(IconData iconData, String text, int index) => SizedBox(
        width: double.infinity,
        height: 135,
        child: Material(
          color: _getBgColor(index),
          child: InkWell(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData),
                Text(
                  text,
                  style: GoogleFonts.itim(
                    textStyle:
                        TextStyle(fontSize: 20, color: _getItemColor(index)),
                  ),
                ),
              ],
            ),
            onTap: () => {
              _onItemTapped(index),
              setState(() {
                isMenuItem1Selected = index;
              })
            },
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle(),
          style: GoogleFonts.itim(
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              height: 24,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
        toolbarHeight: 78,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        iconSize: 50,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _buildIcon(Icons.home_rounded, 'หน้าหลัก', 0), label: ' '),
          BottomNavigationBarItem(
              icon: _buildIcon(Icons.account_circle, 'ข้อมูลส่วนตัว', 1),
              label: ' '),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: _selectedItemColor,
        unselectedItemColor: _unselectedItemColor,
      ),
      floatingActionButton: const PSButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
