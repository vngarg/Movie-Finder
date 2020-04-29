import 'package:movie_finder/models/CategoryModel.dart';

List<CategoryModel> getCategories() {

  List<CategoryModel> categories = List<CategoryModel>();

  CategoryModel category = CategoryModel();

  category.name = "Action";
  categories.add(category);
  
  category = CategoryModel();
  category.name = "Adventure";
  categories.add(category);

  category = CategoryModel();
  category.name = "Thrill";
  categories.add(category);

  category = CategoryModel();
  category.name = "Mystery";
  categories.add(category);

  category = CategoryModel();
  category.name = "Horror";
  categories.add(category);

  category = CategoryModel();
  category.name = "Comedy";
  categories.add(category);

  category = CategoryModel();
  category.name = "Sci-Fi";
  categories.add(category);

  category = CategoryModel();
  category.name = "Romance";
  categories.add(category);

  category = CategoryModel();
  category.name = "Drama";
  categories.add(category);

  category = CategoryModel();
  category.name = "Animation";
  categories.add(category);

  return categories;
}