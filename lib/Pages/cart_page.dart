import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).canvasColor,
          title: const Text("Cart"),
          centerTitle: true,
        ),
        body: Column(
          children: const [Expanded(child: _CartList()), _CartTotal()],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$9999".text.xl5.make(),
          ElevatedButton(
            onPressed: () {},
            child: "Buy".text.xl2.make(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).colorScheme.secondary),
              shape: MaterialStateProperty.all(const StadiumBorder()),
            ),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.done),
          title: const Text("Item"),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.remove_circle_outline)),
        ),
      ),
    );
  }
}
