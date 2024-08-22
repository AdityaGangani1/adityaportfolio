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
    required this.androidLink,
    required this.ioslink,
    required this.weblink,
  });
}

//hobby PROJECTS
List<ProjectsUtils> workProjectUtils = [
  ProjectsUtils(
    image: 'assets/projects/1.jpg',
    title: 'titletitle',
    subtitle: "one oneoneoneoneone oneone oneoneoneoneone",
    ioslink: "",
    weblink: "",
    androidLink:
        "https://www.apple.com/newsroom/2024/07/three-new-games-come-to-apple-arcade-in-august-including-temple-run-legends/",
  ),

  //2
  ProjectsUtils(
    image: '',
    title: 'assets/projects/2.jpg',
    subtitle: "two",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),

  //3
  ProjectsUtils(
    image: 'assets/projects/3.jpg',
    title: "title",
    subtitle: "three",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),
];
