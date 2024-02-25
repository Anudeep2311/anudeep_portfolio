class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> myProjects = [
  ProjectUtils(
    image: 'assets/projects/kutir.png',
    title: 'Kutir App',
    subtitle:
        'This is E-commerce app specially for shopping Khadi type clothing.',
    iosLink: 'https://apps.apple.com/in/app/kutir-store/id6447462869',
    androidLink:
        'https://play.google.com/store/apps/details?id=com.kutir.store&hl=en&gl=US',
    webLink: 'https://kutir.store/#/',
  ),
  ProjectUtils(
    image: 'assets/projects/attendance1.png',
    title: 'Attendance App',
    subtitle:
        'This is a complete project based on the student attendance system',
  ),
  ProjectUtils(
    image: 'assets/projects/digi5s2.png',
    title: 'Digi 5S App',
    subtitle: 'This app made for organisation management and security.',
  ),
  ProjectUtils(
    image: 'assets/projects/jeevan.jpg',
    title: 'Ambulance App',
    subtitle:
        'In this project total of 3 Application has been created.\n1)For Customer 2)Driver 3)Traffic Police.',
  ),
  ProjectUtils(
    image: 'assets/projects/kdmc2.png',
    title: 'Corporation App',
    subtitle:
        'In this app overall corporation management and all the billing and latest news for the corp. has been implemented.',
  ),
];
