import 'package:delivery_app_emilio_puigcerver/models/food.dart';

class Restaurant {
  //lista del menú de comida
  final List<Food> _menu = [
    //burgers
//hamburguesa con tocino
    Food(name: "Bacon Burger",
      description: "crugientes tiras de bacon ahumado, aderesado con mayonesa y catsup",
      imagePath: "lib/images/burgers/bacon_burger.jpg",
      price: 129.00,
      category: FoodCategory.burguers,
      availableAddons: [
        Addon(name: "Extra tocino", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra cebolla", price: 20.00),
      ]
      ),
// hamburguesa picante
        Food(name: "Burger spicy",
      description: "Aderesada con nuestras salsa secreta de la casa y con la mejor carne de calidad ANGUS deleitarás tu paladar",
      imagePath: "lib/images/burgers/burger_spicy.jpg",
      price: 110.00,
      category: FoodCategory.burguers,
      availableAddons: [
        Addon(name: "Extra tocino", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra cebolla", price: 20.00),
      ]
      ),
//hamburguesa con  queso
        Food(name: "cheese burger",
      description: "Queso monterey jack de la mejor calidad agregando un toque distintivo a nuestra hamburguesa",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 129.00,
      category: FoodCategory.burguers,
      availableAddons: [
        Addon(name: "Extra Romero", price: 20.00),
        Addon(name: "Extra tamal", price: 40.00),
        Addon(name: "Extra cebolla", price: 60.00),
      ]
      ),
    //salads
      Food(name: "Ensalada campestre",
      description: "seleccionada con nuestras mejores verduras y los tomates mas jugosos que te imagines",
      imagePath: "lib/images/salads/campestre.jpg",
      price: 129.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

            Food(name: "Ensalada mediterranea",
      description: "seleccionada con nuestras mejores verduras y los tomates mas jugosos que te imagines",
      imagePath: "lib/images/salads/mediterranean.jpg",
      price: 129.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

            Food(name: "Ensalada de pollo",
      description: "seleccionada con nuestras mejores verduras y los tomates mas jugosos que te imagines",
      imagePath: "lib/images/salads/pollo.jpg",
      price: 129.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

    //sides
          Food(name: "Aros de cebolla",
      description: "empanizadas con panco japones el cual las hace más crujientes",
      imagePath: "lib/images/sides/onion_rings.jpg",
      price: 129.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

          Food(name: "Papas a la francesa",
      description: "empanizadas con panco japones el cual las hace más crujientes",
      imagePath: "lib/images/sides/papas_francesas.jpg",
      price: 19.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

          Food(name: "Puré de papa",
      description: "hechas con las mejores papas, seleccionadas manualmente",
      imagePath: "lib/images/sides/pure_de_papa.jpg",
      price: 12.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra adereso", price: 20.00),
        Addon(name: "Extra queso", price: 20.00),
        Addon(name: "Extra lechuga", price: 20.00),
      ]
      ),

    //desserts
        Food(name: "Postre de chocolate",
      description: "Chocolate originario de cuba y hecha por los mejores reposteros del mundo",
      imagePath: "lib/images/desserts/chocolate_postre.jpg",
      price: 29.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 20.00),
        Addon(name: "Extra chocolate blanco", price: 20.00),
        Addon(name: "Extra leche", price: 20.00),
      ]
      ),

          Food(name: "flan",
      description: "Chocolate originario de cuba y hecha por los mejores reposteros del mundo",
      imagePath: "lib/images/desserts/flan_postre.jpg",
      price: 110.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 20.00),
        Addon(name: "Extra chocolate blanco", price: 20.00),
        Addon(name: "Extra leche", price: 20.00),
      ]
      ),

          Food(name: "Postre de fresa",
      description: "hecho con las fresas más frescas de la temporada",
      imagePath: "lib/images/desserts/fresa_postre.jpg",
      price: 129.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra chocolate", price: 20.00),
        Addon(name: "Extra chocolate blanco", price: 20.00),
        Addon(name: "Extra leche", price: 20.00),
      ]
      ),

    //drinks
        Food(name: "Coca cola",
      description: "la puedes acompañar con un limoncito",
      imagePath: "lib/images/drinks/coca_bebida.jpg",
      price: 29.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra hielo", price: 20.00),
        Addon(name: "Extra limón", price: 20.00),
        Addon(name: "Vaso extra", price: 20.00),
      ]
      ),

          Food(name: "New mix",
      description: "la puedes acompañar con un limoncito",
      imagePath: "lib/images/drinks/new_mix_bebida.jpg",
      price: 29.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra hielo", price: 20.00),
        Addon(name: "Extra limón", price: 20.00),
        Addon(name: "Vaso extra", price: 20.00),
      ]
      ),

          Food(name: "Pepsi",
      description: "la puedes acompañar con un limoncito",
      imagePath: "lib/images/drinks/pepsi_bebida.png",
      price: 129.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra hielo", price: 20.00),
        Addon(name: "Extra limón", price: 20.00),
        Addon(name: "Vaso extra", price: 20.00),
      ]
      ),
  ];
  /*
  CAPTADORES
  */
  List<Food> get menu => _menu;

  /*
    OPERACIONES
  */
  //añadir carrito

  // quitar del carrito

  /*
  AYUDANTES
  */


}