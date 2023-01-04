package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{

private static Map<Integer,Product> products;

static {
products = new HashMap<>();
products.put(1, new Product(1, "Apple", 1000,10,"Red USA"));
products.put(2, new Product(2, "Cake", 2000,20,"Donut"));
products.put(3, new Product(3, "Candy", 3000,30,"Crush Saga"));
products.put(4, new Product(4, "Chocolate", 4000,40,"Hot"));
products.put(5, new Product(5, "Coffee", 5000,50,"Arabica"));
}

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

}
