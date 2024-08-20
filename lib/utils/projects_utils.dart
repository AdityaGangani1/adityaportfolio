class ProjectsUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? ioslink;
  final String? weblink;

  ProjectsUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.ioslink,
    this.weblink,
  });
}

//hobby PROJECTS
List<ProjectsUtils> hobbyProjectUtils = [
  ProjectsUtils(image: '', title: 'assets/projects/1.jpg', subtitle: "one"),

  //2
  ProjectsUtils(image: '', title: 'assets/projects/2.jpg', subtitle: "two"),

  //3
  ProjectsUtils(
      image: 'assets/projects/3.jpg', title: "title", subtitle: "three"),
];
