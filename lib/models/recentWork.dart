class recentWork {
  final String image, category, title;
  final int id;

  recentWork({this.id, this.category, this.image, this.title});
}

//demo list of recent works
List<recentWork> recentWorks = [
  recentWork(
    id: 1,
    category: "Graphic Design",
    image: "assets/images/work.jpg",
    title: "New and modern look to website",
  ),
  recentWork(
    id: 2,
    category: "Graphic Design",
    image: "assets/images/work.jpg",
    title: "New and modern look to website",
  ),
  recentWork(
    id: 3,
    category: "Graphic Design",
    image: "assets/images/work.jpg",
    title: "New and modern look to website",
  ),
  recentWork(
    id: 4,
    category: "Graphic Design",
    image: "assets/images/work.jpg",
    title: "New and modern look to website",
  )
];
