import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer_widget.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'KOLONI JAGABUMI VOL 1 - LEGENDA',
      price: 45000,
      photo:
          'https://images.tokopedia.net/img/cache/900/VqbcmM/2020/10/18/db750cf1-3b4e-4434-a8da-84a07e23d422.jpg',
      stock: 8,
      rating: 5,
    ),
    Item(
      name: 'Fuuto Tantei 1 - Fuuto PI - Komik Detective Manga Bahasa Jepang',
      price: 169000,
      photo:
          'https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/10/24/fcc3634b-4914-431a-9611-1c90789aa0df.jpg',
      stock: 1,
      rating: 5,
    ),
    Item(
      name: 'Novel Lewat Tengah Malam - Ganjil - Sweta Kartika',
      price: 61900,
      photo:
          'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/4/23/5c31df11-c2c5-479d-a7a1-4107c49ba8d4.jpg',
      stock: 9,
      rating: 5,
    ),
    Item(
      name: 'Novel Journal Of Terror - Titisan Oleh Sweta Kartika',
      price: 86000,
      photo:
          'https://images.tokopedia.net/img/cache/900/product-1/2020/3/20/2704817/2704817_a75f8386-8f55-4f2f-a453-87d5acc02a16_605_605',
      stock: 100,
      rating: 5,
    ),
    Item(
      name: 'KOLONI : JAGABUMI 2 - SILUMAN',
      price: 45000,
      photo:
          'https://images.tokopedia.net/img/cache/900/hDjmkQ/2020/10/11/e13f0c59-a83b-48c2-8e24-67a91717d9ff.jpg',
      stock: 6,
      rating: 4.9,
    ),
    Item(
      name: 'Koloni : Jagabumi 3 - Ksatria',
      price: 45000,
      photo:
          'https://images.tokopedia.net/img/cache/900/hDjmkQ/2022/1/18/686b199d-a81d-48fa-9c8b-95dd7f94af2b.jpg',
      stock: 11,
      rating: 5,
    ),
    Item(
      name: 'Best Seller Komik Nusa Five Volume 2 oleh Sweta Kartika Nusa V',
      price: 297000,
      photo:
          'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/23/c62ffc8b-74ff-4fb1-aab6-d490a4287cd2.jpg',
      stock: 200,
      rating: 5,
    ),
    Item(
      name: 'KOLONI Si Buta dari Gua Hantu 03 : Rajamandala',
      price: 73500,
      photo:
          'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/12/8/f404f3f9-9ebf-48f7-8bcd-49b83cb3f5d1.jpg',
      stock: 5,
      rating: 5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen | Shopping List'),
      ),
      body: Container(
        color: Colors.grey,
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio: 0.7,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            final priceFormat = NumberFormat("#,##0.00", "en_US");

            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Hero(
                          tag: 'imageHero${item.name}${item.price}',
                          child: SizedBox(
                            height: 150,
                            child: Image.network(
                              item.photo.toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 100),
                                child: Text(
                                  item.name.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 100),
                                child: Text(
                                  'Rp${priceFormat.format(item.price)}',
                                  style: TextStyle(
                                    color: Colors.green[800],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue[800],
                              ),
                              Text(item.rating.toString()),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Stok Tersisa: ',
                            ),
                            TextSpan(
                              text: '${item.stock}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const MyFooter(),
    );
  }
}
