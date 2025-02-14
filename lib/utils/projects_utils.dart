class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? movieLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.movieLink,
    this.webLink,
  });
}

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'lib/assets/projects/Mago_oz.png',
    title: 'Mago 1974',
    subtitle: 'Descripción del proyecto Mago 1974',
    movieLink: 'https://www.imdb.com/es/title/tt0032138/',
    webLink: 'https://es.wikipedia.org/wiki/El_mago_de_Oz',
  ),
  ProjectUtils(
    image: 'assets/projects/mago_1978.jpg',
    title: 'Mago 1978',
    subtitle: 'Descripción del proyecto Mago 1978',
    webLink: 'https://apps.apple.com/app/id123456789',

  ),
  ProjectUtils(
    image: 'assets/projects/mago_1982.jpg',
    title: 'Mago 1982',
    subtitle: 'Descripción del proyecto Mago 1982',
    webLink: 'https://www.example.com/mago1982',
  ),
  // Agrega más proyectos según sea necesario
];

List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/wicked_2003.jpg',
    title: 'Wicked 2003',
    subtitle: 'Descripción del proyecto Wicked 2003',
    movieLink:
        'https://play.google.com/store/apps/details?id=com.example.wicked2003',
  ),
  ProjectUtils(
    image: 'assets/projects/wicked_2024.jpg',
    title: 'Wicked 2024',
    subtitle: 'Descripción del proyecto Wicked 2024',
    movieLink: 'https://apps.apple.com/app/id987654321',
  ),
  // Agrega más proyectos según sea necesario
];
