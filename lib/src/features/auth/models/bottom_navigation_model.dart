class BottomNavigationMenu {
  final String activeIcon;
  final String deactiveIcon;
  final String title;

  BottomNavigationMenu(
      {required this.activeIcon,
      required this.deactiveIcon,
      required this.title});
}

//List when qr is not scanned
List<BottomNavigationMenu> bottomnavigationbardata1 = [
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/home_active.svg',
      deactiveIcon: "assets/auth/images/home.svg",
      title: "Home"),
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/blog_active.svg',
      deactiveIcon: "assets/auth/images/blog.svg",
      title: "Blog"),
];

//list of bottom navigation bar when qr is scanned
List<BottomNavigationMenu> bottomnavigationbardata2 = [
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/home_active.svg',
      deactiveIcon: "assets/auth/images/home.svg",
      title: "Home"),
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/blog_active.svg',
      deactiveIcon: "assets/auth/images/blog.svg",
      title: "Blog"),
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/home_active.svg',
      deactiveIcon: "assets/auth/images/home.svg",
      title: "Wishlist"),
  BottomNavigationMenu(
      activeIcon: 'assets/auth/images/blog_active.svg',
      deactiveIcon: "assets/auth/images/blog.svg",
      title: "Admin"),
];
