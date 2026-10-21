import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// ===================== MODEL DATA =====================
// Hewan: 6 field, tipe data String, double, int, bool
class Hewan {
  final String nama;
  final String namaIlmiah;
  final double panjangCm; // perkiraan panjang tubuh rata-rata
  final int tingkatBahaya; // 1 (aman) sampai 5 (sangat berbahaya)
  final bool perluDilindungi; // status konservasi (hampir terancam ke atas)
  final String emoji; // gambar hewan berupa emoji

  const Hewan({
    required this.nama,
    required this.namaIlmiah,
    required this.panjangCm,
    required this.tingkatBahaya,
    required this.perluDilindungi,
    required this.emoji,
  });
}

// BukuHewan: satu "buku" berisi beberapa jenis hewan
class BukuHewan {
  final String judul;
  final String emoji;
  final Color warna;
  final List<Hewan> isi;

  const BukuHewan({
    required this.judul,
    required this.emoji,
    required this.warna,
    required this.isi,
  });
}

// ===================== DATA =====================
// Panjang tubuh dan status konservasi adalah perkiraan; cek ulang ke IUCN Red List.
const List<BukuHewan> daftarBuku = [
  BukuHewan(
    judul: 'Kodok',
    emoji: '🐸',
    warna: Color(0xFF00796B),
    isi: [
      Hewan(
        nama: 'Katak Panah Beracun Biru',
        namaIlmiah: 'Dendrobates tinctorius "azureus"',
        panjangCm: 4.5,
        tingkatBahaya: 3,
        perluDilindungi: false,
        emoji: '🐸',
      ),
      Hewan(
        nama: 'Katak Monyet Raksasa',
        namaIlmiah: 'Phyllomedusa bicolor',
        panjangCm: 11.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐸',
      ),
      Hewan(
        nama: 'Katak Kaca',
        namaIlmiah: 'Famili Centrolenidae',
        panjangCm: 3.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐸',
      ),
      Hewan(
        nama: 'Katak Pacman',
        namaIlmiah: 'Ceratophrys cornuta',
        panjangCm: 12.0,
        tingkatBahaya: 2,
        perluDilindungi: false,
        emoji: '🐸',
      ),
    ],
  ),
  BukuHewan(
    judul: 'Burung',
    emoji: '🦜',
    warna: Color(0xFFC62828),
    isi: [
      Hewan(
        nama: 'Macaw Merah',
        namaIlmiah: 'Ara macao',
        panjangCm: 85.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🦜',
      ),
      Hewan(
        nama: 'Toucan Toco',
        namaIlmiah: 'Ramphastos toco',
        panjangCm: 60.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐦',
      ),
      Hewan(
        nama: 'Elang Harpy',
        namaIlmiah: 'Harpia harpyja',
        panjangCm: 100.0,
        tingkatBahaya: 3,
        perluDilindungi: true,
        emoji: '🦅',
      ),
    ],
  ),
  BukuHewan(
    judul: 'Primata',
    emoji: '🐒',
    warna: Color(0xFF6D4C41),
    isi: [
      Hewan(
        nama: 'Monyet Laba-laba',
        namaIlmiah: 'Ateles paniscus',
        panjangCm: 50.0,
        tingkatBahaya: 1,
        perluDilindungi: true,
        emoji: '🐒',
      ),
      Hewan(
        nama: 'Monyet Howler',
        namaIlmiah: 'Alouatta seniculus',
        panjangCm: 60.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐵',
      ),
      Hewan(
        nama: 'Tamarin Kaisar',
        namaIlmiah: 'Saguinus imperator',
        panjangCm: 25.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐒',
      ),
    ],
  ),
  BukuHewan(
    judul: 'Reptil',
    emoji: '🐍',
    warna: Color(0xFF827717),
    isi: [
      Hewan(
        nama: 'Anakonda Hijau',
        namaIlmiah: 'Eunectes murinus',
        panjangCm: 600.0,
        tingkatBahaya: 4,
        perluDilindungi: false,
        emoji: '🐍',
      ),
      Hewan(
        nama: 'Kaiman Hitam',
        namaIlmiah: 'Melanosuchus niger',
        panjangCm: 400.0,
        tingkatBahaya: 5,
        perluDilindungi: false,
        emoji: '🐊',
      ),
      Hewan(
        nama: 'Iguana Hijau',
        namaIlmiah: 'Iguana iguana',
        panjangCm: 150.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🦎',
      ),
    ],
  ),
  BukuHewan(
    judul: 'Mamalia',
    emoji: '🐆',
    warna: Color(0xFFEF6C00),
    isi: [
      Hewan(
        nama: 'Jaguar',
        namaIlmiah: 'Panthera onca',
        panjangCm: 170.0,
        tingkatBahaya: 5,
        perluDilindungi: true,
        emoji: '🐆',
      ),
      Hewan(
        nama: 'Kapibara',
        namaIlmiah: 'Hydrochoerus hydrochaeris',
        panjangCm: 120.0,
        tingkatBahaya: 1,
        perluDilindungi: false,
        emoji: '🐹',
      ),
      Hewan(
        nama: 'Tapir Amerika Selatan',
        namaIlmiah: 'Tapirus terrestris',
        panjangCm: 200.0,
        tingkatBahaya: 2,
        perluDilindungi: true,
        emoji: '🐗',
      ),
      Hewan(
        nama: 'Lumba-lumba Sungai Merah Muda',
        namaIlmiah: 'Inia geoffrensis',
        panjangCm: 250.0,
        tingkatBahaya: 1,
        perluDilindungi: true,
        emoji: '🐬',
      ),
    ],
  ),
];

// ===================== MyApp (satu-satunya MaterialApp) =====================
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rak Buku Amazon',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B5E20)),
        scaffoldBackgroundColor: const Color(0xFFF3EFE0),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B5E20),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const LayarUtama(),
    );
  }
}

// ===================== Halaman utama (Scaffold, tanpa MaterialApp) =====================
class LayarUtama extends StatelessWidget {
  const LayarUtama({super.key});

  @override
  Widget build(BuildContext context) {
    int totalSpesies = 0;
    for (final buku in daftarBuku) {
      totalSpesies += buku.isi.length;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Rak Buku Hewan Amazon')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KartuRingkasan(
              totalBuku: daftarBuku.length,
              totalSpesies: totalSpesies,
            ),
            const SizedBox(height: 16),
            const Text(
              'Pilih sebuah buku untuk dibuka',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4E342E),
              ),
            ),
            const SizedBox(height: 12),
            // Wrap: buku turun baris otomatis di layar sempit
            Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 16,
              children: [
                for (final buku in daftarBuku)
                  BukuRak(
                    buku: buku,
                    onTap: () {
                      debugPrint('BUKA BUKU: ${buku.judul}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HalamanBuku(buku: buku),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ===================== Halaman isi buku (StatefulWidget) =====================
// StatefulWidget dipakai karena tombol "Tandai Sudah Dilihat" mengubah
// tampilan (status kartu dan progress bar) lewat setState.
class HalamanBuku extends StatefulWidget {
  final BukuHewan buku;

  const HalamanBuku({super.key, required this.buku});

  @override
  State<HalamanBuku> createState() => _HalamanBukuState();
}

class _HalamanBukuState extends State<HalamanBuku> {
  late List<bool> sudahDilihat;

  @override
  void initState() {
    super.initState();
    sudahDilihat = List.filled(widget.buku.isi.length, false);
  }

  @override
  Widget build(BuildContext context) {
    int jumlahDilihat = 0;
    for (final status in sudahDilihat) {
      if (status) jumlahDilihat++;
    }
    final int total = widget.buku.isi.length;

    return Scaffold(
      appBar: AppBar(title: Text('Buku ${widget.buku.judul}')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dilihat $jumlahDilihat dari $total spesies',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4E342E),
                  ),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: jumlahDilihat / total,
                    minHeight: 10,
                    color: widget.buku.warna,
                    backgroundColor: Colors.brown.shade100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              itemCount: total,
              itemBuilder: (context, index) {
                final hewan = widget.buku.isi[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: KartuHewan(
                    hewan: hewan,
                    warna: widget.buku.warna,
                    sudahDilihat: sudahDilihat[index],
                    onTandai: () {
                      setState(() {
                        sudahDilihat[index] = !sudahDilihat[index];
                      });
                      debugPrint('TOMBOL DIKLIK: ${hewan.nama}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ===================== Custom widget: kartu ringkasan =====================
class KartuRingkasan extends StatelessWidget {
  final int totalBuku;
  final int totalSpesies;

  const KartuRingkasan({
    super.key,
    required this.totalBuku,
    required this.totalSpesies,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(Icons.forest, size: 32, color: Color(0xFF1B5E20)),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Perpustakaan Hutan Amazon',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    '$totalBuku buku, $totalSpesies spesies',
                    style: const TextStyle(fontSize: 14, color: Colors.black54),
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

// ===================== Custom widget: satu buku di rak =====================
class BukuRak extends StatelessWidget {
  final BukuHewan buku;
  final VoidCallback onTap;

  const BukuRak({super.key, required this.buku, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 112,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 96,
              height: 140,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: buku.warna,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(buku.emoji, style: const TextStyle(fontSize: 32)),
                  const SizedBox(height: 8),
                  Text(
                    buku.judul,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${buku.isi.length} jenis',
                    style: const TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                ],
              ),
            ),
            // Papan rak kayu di bawah buku
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.brown.shade400,
                border: Border(
                  top: BorderSide(color: Colors.brown.shade700, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================== Custom widget: kartu satu hewan =====================
class KartuHewan extends StatelessWidget {
  final Hewan hewan;
  final Color warna;
  final bool sudahDilihat;
  final VoidCallback onTandai;

  const KartuHewan({
    super.key,
    required this.hewan,
    required this.warna,
    required this.sudahDilihat,
    required this.onTandai,
  });

  @override
  Widget build(BuildContext context) {
    final String bintang =
        '★' * hewan.tingkatBahaya + '☆' * (5 - hewan.tingkatBahaya);

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FotoHewan(hewan: hewan, warna: warna),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hewan.nama,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        hewan.namaIlmiah,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _InfoChip(
                  ikon: Icons.straighten,
                  teks: '${hewan.panjangCm} cm',
                  warna: warna,
                ),
                _InfoChip(
                  ikon: Icons.warning_amber_rounded,
                  teks: 'Bahaya $bintang',
                  warna: warna,
                ),
                _InfoChip(
                  ikon: hewan.perluDilindungi
                      ? Icons.shield
                      : Icons.check_circle_outline,
                  teks: hewan.perluDilindungi ? 'Perlu dilindungi' : 'Aman',
                  warna: warna,
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: sudahDilihat ? Colors.grey.shade600 : warna,
                ),
                onPressed: onTandai,
                child: Text(
                  sudahDilihat ? 'Sudah Dilihat ✓' : 'Tandai Sudah Dilihat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===================== Custom widget kecil: gambar hewan (emoji) =====================
class _FotoHewan extends StatelessWidget {
  final Hewan hewan;
  final Color warna;

  const _FotoHewan({required this.hewan, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: warna.withAlpha(40),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(hewan.emoji, style: const TextStyle(fontSize: 40)),
    );
  }
}

// ===================== Custom widget kecil: chip informasi =====================
class _InfoChip extends StatelessWidget {
  final IconData ikon;
  final String teks;
  final Color warna;

  const _InfoChip({required this.ikon, required this.teks, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: warna.withAlpha(30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: warna.withAlpha(120)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(ikon, size: 16, color: warna),
          const SizedBox(width: 4),
          Text(teks, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}