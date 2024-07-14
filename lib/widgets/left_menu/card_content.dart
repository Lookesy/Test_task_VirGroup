//Наполнение пунктов в левом меню
class LeftMenuCardContent{
  final String image;
  final String title;
  
  LeftMenuCardContent(
      this.image,
      this.title
      );
}

List<LeftMenuCardContent> LeftCardContent = [
  LeftMenuCardContent("assets/images/vegetables.png", "Овощи"),
  LeftMenuCardContent("assets/images/drinks.png", "Напитки"),
  LeftMenuCardContent("assets/images/fish.jpg", "Рыба, икра"),
  LeftMenuCardContent("assets/images/fruits.png", "Фрукты"),
  LeftMenuCardContent("assets/images/icecream.png", "Мороженое"),
  LeftMenuCardContent("assets/images/meat.png", "Мясо"),
  LeftMenuCardContent("assets/images/potatocheaps.png", "Чипсы, закуски"),
  LeftMenuCardContent("assets/images/sausage.jpg", "Колбаса, сосиски"),
  LeftMenuCardContent("assets/images/sweet.png", "Сладости"),
  LeftMenuCardContent("assets/images/milk.png", "Молоко, сыр, яйца"),
  LeftMenuCardContent("assets/images/macarons.jpg", "Макароны"),
  LeftMenuCardContent("assets/images/energ.png", "Энергетические напитки"),
  LeftMenuCardContent("assets/images/alcohol.png", "Алкоголь"),
];