class ChatModel {
  final String image;
  final String? title;
  final String? subTitle;
  int likecount;
  final String name;
  final int age;
  bool isOnline;

  ChatModel(
      {this.isOnline = false,
      required this.age,
      required this.name,
      required this.image,
      this.title,
      this.subTitle,
      this.likecount = 0});
  static List<ChatModel> imageList = [
    ChatModel(
      isOnline: true,
      age: 22,
      name: 'Sumitra Shrestha',
      title: 'Intelligent AI',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://4.bp.blogspot.com/-Sd7pkZ-1Vyc/Wq_x-tJA0OI/AAAAAAAAwZE/sOxlXod9TAEwIG4XGP-R9uda7MQCrRIdACLcBGAs/s1600/39-Rashmika-Mandanna-New-Latest-HD-Photos-Chalo-Movie-Heroine-Rashmika-Mandanna-Photo-Shoot-Images.jpg',
    ),
    ChatModel(
      age: 23,
      name: 'Janu ',
      title: 'Be Friends',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image: 'https://static.toiimg.com/photo/63727667.cms',
    ),
    ChatModel(
      isOnline: true,
      age: 24,
      name: 'Maya ',
      title: 'Smart Network Connection',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://i.pinimg.com/originals/47/30/03/47300348c378361f2b5000c2649ec642.jpg',
    ),
    ChatModel(
      age: 25,
      name: 'Jessica ',
      title: 'Date with strangers',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://4.bp.blogspot.com/-X5Y026QzAII/XKTMO9MvQbI/AAAAAAAAA2k/7IPFoIwufeU0dlVOxoWhgxO6e9sFN2KDgCLcBGAs/s1600/yellow_designer_saree.jpg',
    ),
    ChatModel(
        age: 26,
        name: 'Sajjan Raj Vaidya ',
        title: 'Be smart be mingle',
        subTitle: 'Platform users AI to ensure you receive best matches!',
        image:
            'https://images.unsplash.com/photo-1482361046637-0226fdcfa3b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
    ChatModel(
      isOnline: true,
      age: 22,
      name: 'Rebika Poudel',
      title: 'Perfect Matches',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://4.bp.blogspot.com/-Sd7pkZ-1Vyc/Wq_x-tJA0OI/AAAAAAAAwZE/sOxlXod9TAEwIG4XGP-R9uda7MQCrRIdACLcBGAs/s1600/39-Rashmika-Mandanna-New-Latest-HD-Photos-Chalo-Movie-Heroine-Rashmika-Mandanna-Photo-Shoot-Images.jpg',
    ),
    ChatModel(
      age: 24,
      name: 'Suna Maya ',
      title: 'Smart Network Connection',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://4.bp.blogspot.com/-Sd7pkZ-1Vyc/Wq_x-tJA0OI/AAAAAAAAwZE/sOxlXod9TAEwIG4XGP-R9uda7MQCrRIdACLcBGAs/s1600/39-Rashmika-Mandanna-New-Latest-HD-Photos-Chalo-Movie-Heroine-Rashmika-Mandanna-Photo-Shoot-Images.jpg',
    ),
    ChatModel(
      isOnline: true,
      age: 23,
      name: 'Susmita Sen',
      title: 'SuperStar MeetUp',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image: 'https://static.toiimg.com/photo/63727667.cms',
    ),
    ChatModel(
      isOnline: true,
      age: 24,
      name: 'Kabita Lamichhane ',
      title: 'Best Couple Matches',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://i.pinimg.com/originals/47/30/03/47300348c378361f2b5000c2649ec642.jpg',
    ),
    ChatModel(
      isOnline: true,
      age: 25,
      name: 'Junu Maya ',
      title: 'Start From Scratch',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://4.bp.blogspot.com/-X5Y026QzAII/XKTMO9MvQbI/AAAAAAAAA2k/7IPFoIwufeU0dlVOxoWhgxO6e9sFN2KDgCLcBGAs/s1600/yellow_designer_saree.jpg',
    ),
    ChatModel(
      isOnline: true,
      age: 24,
      name: 'Maya Devi',
      title: 'Smart Network Connection',
      subTitle: 'Platform users AI to ensure you receive best matches!',
      image:
          'https://i.pinimg.com/originals/47/30/03/47300348c378361f2b5000c2649ec642.jpg',
    ),
  ];
}
