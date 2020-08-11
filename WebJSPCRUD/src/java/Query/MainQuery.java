/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Query;

/**
 *
 * @author user
 */
public class MainQuery {
    public String get = "SELECT * FROM products";
    public String create = "INSERT INTO products (name, category, quantity, expired_at)"
            + "VALUES (?,?,?,?)";
    public String show = "SELECT * FROM products WHERE id = ?";
    public String update = "UPDATE products SET name = ?,category = ?,quantity = ?,"
            + "expired_at = ? WHERE id = ?";
    public String delete = "DELETE FROM products WHERE id = ?";
}
