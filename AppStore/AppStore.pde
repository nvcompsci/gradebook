/**
* class AppStore
* This is the main class for the AppStore
*/
App[] apps;
public void setup() {
  size(1024,900);
  
  Table table = loadTable("apps.csv", "header");
  int rows = table.getRowCount();
  System.out.printf("%d rows loaded",rows);
  apps = new App[rows];
  int i = 0;
  for (TableRow row : table.rows()) {
    String name = row.getString("name");
    float rating = row.getFloat("rating");
    int reviews = row.getInt("reviews");
    int installs = row.getInt("installs");
    float price = row.getFloat("price");
    String contentRating = row.getString("content_rating");
    String genre = row.getString("genre");
    apps[i] = new App(
      name, contentRating, genre,
      rating, price, reviews, installs
    );
    i++;
  }
}

public void draw() {
  
}
