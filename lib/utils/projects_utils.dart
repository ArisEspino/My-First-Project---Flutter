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

// ignore: non_constant_identifier_names
List<ProjectUtils> Wicked_Movies = [
  ProjectUtils(
    image: 'lib/assets/projects/Mago_oz.jpg',
    title: 'El Mago de Oz (1974)',
    subtitle:
        'El Mago de Oz es un clásico musical de 1939 que sigue a Dorothy y su perro Toto en un viaje mágico por la tierra de Oz.',
    movieLink: 'https://www.imdb.com/es/title/tt0032138/',
    webLink: 'https://es.wikipedia.org/wiki/El_mago_de_Oz',
  ),
  ProjectUtils(
    image: 'lib/assets/projects/mago_1978.jpg',
    title: 'El Mago (1978)',
    subtitle:
        'Versión musical urbana de "El Mago de Oz" protagonizada por Diana Ross y Michael Jackson.',
    movieLink:
        'https://www.imdb.com/video/vi2130051353/?playlistId=tt0078504&ref_=tt_ov_pr_ov_vi',
    webLink:
        'https://es.wikidat.com/info/el-mago-pelicula-de-1978?utm_source=chatgpt.com',
  ),
  ProjectUtils(
    image: 'lib/assets/projects/mago_1982.jpg',
    title: 'El Mago de oz (1982)',
    subtitle:
        'Película animada japonesa que adapta fielmente la historia original de L. Frank Baum.',
    movieLink: 'https://www.imdb.com/es/title/tt0084458/?language=es-es',
    webLink:
        'https://es.wikipedia.org/wiki/El_mago_de_Oz_(pel%C3%ADcula_de_1982)',
  ),
  ProjectUtils(
      image: 'lib/assets/projects/wicked_2003.jpg',
      title: 'Wicked (2003)',
      subtitle:
          'Musical de Broadway sobre la amistad de Elphaba y Glinda antes de "El Mago de Oz.',
      movieLink: 'https://www.youtube.com/watch?v=Svt0UytcAgc',
      webLink:
          'https://wicked.fandom.com/es/wiki/Wicked?utm_source=chatgpt.com'),
  ProjectUtils(
      image: 'lib/assets/projects/wicked_2024.jpg',
      title: 'Wicked (2024)',
      subtitle:
          'Película musical que narra el origen de las brujas de Oz, basada en el exitoso musical de Broadway.',
      movieLink:
          'https://www.imdb.com/es-es/title/tt1262426/?utm_source=chatgpt.com',
      webLink: 'https://es.wikipedia.org/wiki/Wicked_(pel%C3%ADcula)'),
];
