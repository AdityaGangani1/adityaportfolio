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
    image: 'assets/projects/2.jpg',
    title: '',
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

List<ProjectsUtils> hobbyProjectUtils = [
  ProjectsUtils(
    image: 'assets/projects/1.jpg',
    title: '1titletitle',
    subtitle: "one oneoneoneoneone oneone oneoneoneoneone",
    ioslink: "",
    weblink: "",
    androidLink:
        "https://www.apple.com/newsroom/2024/07/three-new-games-come-to-apple-arcade-in-august-including-temple-run-legends/",
  ),

  //2
  ProjectsUtils(
    image: 'assets/projects/2.jpg',
    title: '2title',
    subtitle: "two",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),

  //3
  ProjectsUtils(
    image: 'assets/projects/3.jpg',
    title: "3title",
    subtitle: "three",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),
];
