import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String imageUrl;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.imageUrl,
      required this.createdAt});

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Game Terbaru Rise of Legends Rilis Minggu Depan!',
      subtitle:
          'Penasaran dengan Fitur Baru dan Cerita Seru di Rise of Legends?',
      body:
          'Para penggemar game dapat menantikan kehadiran game terbaru Rise of Legends, yang dijadwalkan rilis minggu depan. Game ini menawarkan pengalaman gaming yang mendalam dengan cerita yang menarik dan fitur-fitur baru yang mengagumkan.Para penggemar game dapat menantikan kehadiran game terbaru Rise of Legends, yang dijadwalkan rilis minggu depan. Game ini menawarkan pengalaman gaming yang mendalam dengan cerita yang menarik dan fitur-fitur baru yang mengagumkan.Para penggemar game dapat menantikan kehadiran game terbaru Rise of Legends, yang dijadwalkan rilis minggu depan. Game ini menawarkan pengalaman gaming yang mendalam dengan cerita yang menarik dan fitur-fitur baru yang mengagumkan.',
      author: 'John Doe',
      imageUrl:
          'https://images.unsplash.com/photo-1560419015-7c427e8ae5ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 30)),
    ),
    Article(
      id: '2',
      title: 'Turnamen eSports Terbesar Tahun Ini: Siapakah yang Akan Menang?',
      subtitle:
          'Ajang Kompetisi eSports Terbesar Mengundang Ratusan Tim Terbaik!',
      body:
          'Penasaran dengan siapa yang akan memenangkan turnamen eSports terbesar tahun ini? Ratusan tim terbaik dari seluruh dunia akan bersaing dalam kompetisi ini untuk memperebutkan gelar juara dan hadiah fantastis.',
      author: 'Sarah Johnson',
      imageUrl:
          'https://images.unsplash.com/photo-1511512578047-dfb367046420?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 20)),
    ),
    Article(
      id: '3',
      title: "Ubisoft Umumkan Perilisan Ekspansi 'Assassin's Creed Odyssey'",
      subtitle:
          'Pelajari Lebih Banyak Tentang Petualangan Baru Pahlawan Assassins!',
      body:
          "Ubisoft baru saja mengumumkan perilisan ekspansi terbaru untuk game populer mereka, 'Assassin's Creed Odyssey'. Ekspansi ini akan membawa pemain dalam petualangan baru dengan misi-misi menarik dan area baru yang menakjubkan.",
      author: 'Michael Anderson',
      imageUrl:
          'https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 50)),
    ),
    Article(
      id: '4',
      title: 'Game VR Terbaru Neon Infinity Hadir dengan Grafis Mengagumkan',
      subtitle:
          'Menghadirkan Dunia Virtual yang Luar Biasa dengan Teknologi VR Terkini',
      body:
          'Para pecinta VR dapat bersiap-siap untuk menyelam ke dalam dunia virtual yang menakjubkan dengan game terbaru Neon Infinity. Dengan grafis mengagumkan dan teknologi VR terkini, game ini akan membawa pengalaman gaming ke level yang lebih tinggi.',
      author: 'Laura Smith',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1675257062614-c1da6b8d83ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 70)),
    ),
    Article(
      id: '5',
      title: 'Inovasi Baru dalam Game Mobile: Infinity Clash Rilis Hari Ini!',
      subtitle:
          'Raih Kemenangan dalam Pertempuran Intens dengan Teman-teman Anda!',
      body:
          'Para pemain mobile dapat segera mengunduh game baru yang sangat dinantikan, Infinity Clash. Game ini menawarkan pertempuran intens dan strategi yang memukau. Ayo bergabung dan raih kemenangan bersama teman-teman Anda!',
      author: 'David Miller',
      imageUrl:
          'https://images.unsplash.com/photo-1580327344181-c1163234e5a0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2067&q=80',
      createdAt: DateTime.now().subtract(const Duration(hours: 80)),
    ),
    Article(
      id: '6',
      title: 'Panduan Lengkap: Memulai Petualangan Seru di Dunia Game Terbaru!',
      subtitle: 'Temukan Rahasia dan Strategi untuk Menjadi Pemain Terbaik!',
      body:
          'Dalam artikel ini, kami akan membahas tips, trik, dan strategi untuk memulai petualangan seru di dunia game terbaru. Saksikan rahasia-rahasia menarik dan jadilah pemain terbaik di antara teman-teman Anda!',
      author: 'Jessica Smith',
      imageUrl:
          'https://images.unsplash.com/photo-1498736297812-3a08021f206f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1779&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Article(
      id: '7',
      title:
          'Exploring the Virtual Realm: The Rise of Immersive Gaming Experience',
      subtitle: 'Dive into the Future of Gaming with Virtual Reality!',
      body:
          'This article explores the fascinating world of immersive gaming experience powered by virtual reality. Discover how VR is revolutionizing the gaming industry and providing players with an unparalleled level of immersion and excitement.',
      author: 'Michael Johnson',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1678112180588-5d4ed9eabeea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Article(
      id: '8',
      title: 'Competitive Gaming: Unveiling the Secrets to Esports Success',
      subtitle: 'Master the Art of Esports and Dominate the Competitive Scene!',
      body:
          'In this article, we unveil the secrets to success in the competitive world of esports. From training regimes to mental fortitude, we delve into what it takes to become a professional esports player and dominate the competitive gaming scene.',
      author: 'Alex Roberts',
      imageUrl:
          'https://images.unsplash.com/photo-1598550476439-6847785fcea6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
    ),
    Article(
      id: '9',
      title: 'Revolutionizing Game Design: The Role of Artificial Intelligence',
      subtitle: 'How AI is Shaping the Future of Game Development!',
      body:
          'This article explores the groundbreaking role of artificial intelligence in revolutionizing game design and development. Learn how AI is enhancing game environments, creating intelligent NPCs, and providing a more immersive gaming experience for players.',
      author: 'Emily Davis',
      imageUrl:
          'https://images.unsplash.com/photo-1601987177651-8edfe6c20009?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
    ),
    Article(
      id: '10',
      title:
          'Gaming for Good: How Gamers are Making a Positive Impact on Society',
      subtitle: 'Discover the Charitable Side of the Gaming Community!',
      body:
          'In this article, we shed light on how the gaming community is making a positive impact on society through various charitable initiatives. Explore the philanthropic efforts of gamers and how their passion for gaming is being utilized to contribute to meaningful causes.',
      author: 'David Clark',
      imageUrl:
          'https://images.unsplash.com/photo-1593118247619-e2d6f056869e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
    ),
    Article(
      id: '11',
      title: 'Epic Adventures Await: A Review of the Latest RPG Masterpiece',
      subtitle: 'Embark on an Unforgettable Journey in the World of RPGs!',
      body:
          'This article is a comprehensive review of the latest RPG masterpiece that promises epic adventures and unforgettable experiences. Join us as we dive into the captivating world of role-playing games and discover the magic that awaits you on this incredible journey.',
      author: 'Sarah Adams',
      imageUrl:
          'https://images.unsplash.com/photo-1534423861386-85a16f5d13fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      createdAt: DateTime.now().subtract(const Duration(days: 20)),
    ),
  ];

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, title, subtitle, body, author, imageUrl, createdAt];
}
