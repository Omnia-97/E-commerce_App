class EndPoints{
  static const String signUp = "/api/v1/auth/signup";
  static const String signIn = "/api/v1/auth/signin";
  static const String brands = "/api/v1/brands";
  static const String categories = "/api/v1/categories";
  static const String subCategories = "/api/v1/subcategories";
  static const String allProducts = "/api/v1/products";
  static const String addToCart = "/api/v1/cart";
  static const String addProductToWishList = "/api/v1/wishlist";
  static String categoriesOnCategory(String categoryId) =>'/api/v1/categories/$categoryId/subcategories';
  static String removeProductFromWishList(String productId) =>'/api/v1/wishlist/$productId';

}