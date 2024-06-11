import 'package:flutter/material.dart';

class BookCardPengembalian extends StatelessWidget {
  final String image;
  final String judul;
  final String tanggal;

  BookCardPengembalian({required this.image, required this.judul, required this.tanggal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'http://192.168.1.4:8000/storage/buku/$image',
              height: 150,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Tanggal pengembalian',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    color: Colors.grey.shade300,
                    child: Text(
                      tanggal,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Menunggu permintaan',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    color: Colors.cyanAccent,
                    child: Center(
                      child: Text(
                        'Sedang diproses',
                        style: TextStyle(
                          fontFamily: "Inika",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}