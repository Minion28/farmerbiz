import 'models/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'components/groceryitem.dart';
import 'Cartpage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Cartpage();
        }
        )),
      backgroundColor: Colors.blueGrey,
      child: const Icon(Icons.shopping_basket),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox( height: 48),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Hello There!",
                style: TextStyle(
                  color: Colors.grey,
                    fontWeight: FontWeight.bold
                ),),
            ),
            const SizedBox(
              height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text("Let's order some fresh produce for you!",
                style: GoogleFonts.notoSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                )),
              ),
           const SizedBox(
            height: 24,
          ),
          const Divider(
            thickness: 2,
          ),
           const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Fresh Items'),
          ),
          Expanded(
              child: Consumer<Cart>(
                  builder: (context, value, child) {
            return GridView.builder(
              itemCount: value.shopItems.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                  childAspectRatio: 1/1.4,
      ),
                itemBuilder: (context, index) {
              return GroceryItem(
                itemName: value.shopItems[index][0],
                itemPrice: value.shopItems[index][1],
                imagePath: value.shopItems[index][2],
                color: value.shopItems[index][3],
                onPressed: (){
                  Provider.of<Cart>(context, listen:false).addCart(index);
                },
      );
      }
      );
          }
          )
          )
        ],
      ),
      ),
      );

  }
}