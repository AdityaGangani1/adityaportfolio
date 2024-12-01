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
    image: 'assets/projects/nidhanav.jpg',
    title: 'Nidhanav',
    subtitle:
        """The music player app ui design. it allows users to explore the app and listen music.""",
    ioslink: "",
    weblink: "",
    androidLink:
        "https://www.apple.com/newsroom/2024/07/three-new-games-come-to-apple-arcade-in-august-including-temple-run-legends/",
  ),

  //2
  ProjectsUtils(
    image: 'assets/projects/buddhisam.jpg',
    title: 'Buddhisam',
    subtitle:
        """Responsive ui were added to mobile apps, Include Text to speech Functionality in variety of files Including epub, html, pdf and text.""",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),

  ProjectsUtils(
    image: 'assets/projects/audioBookify.jpg',
    title: 'AudioBookify',
    subtitle:
        """The user can read and hear a variety of stories and also read quotes. """,
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),

  //3
  ProjectsUtils(
    image: 'assets/projects/universal.jpg',
    title: "Universal",
    subtitle:
        "Create a chat, home, contact screen similar to the original WhatsApp.",
    ioslink: "",
    weblink: "",
    androidLink: "",
  ),
];

// List<ProjectsUtils> hobbyProjectUtils = [
//   ProjectsUtils(
//     image: 'assets/projects/1.jpg',
//     title: '1titletitle',
//     subtitle: "one oneoneoneoneone oneone oneoneoneoneone",
//     ioslink: "",
//     weblink: "",
//     androidLink:
//         "https://www.apple.com/newsroom/2024/07/three-new-games-come-to-apple-arcade-in-august-including-temple-run-legends/",
//   ),

//   //2
//   ProjectsUtils(
//     image: 'assets/projects/2.jpg',
//     title: '2title',
//     subtitle: "two",
//     ioslink: "",
//     weblink: "",
//     androidLink: "",
//   ),

//   //3
//   ProjectsUtils(
//     image: 'assets/projects/3.jpg',
//     title: "3title",
//     subtitle: "three",
//     ioslink: "",
//     weblink: "",
//     androidLink: "",
//   ),
// ];
