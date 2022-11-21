package fpoly.carshop.service;

import org.hibernate.criterion.Order;

import fpoly.carshop.dto.DtoOrder;
import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.Orders;
import fpoly.carshop.entity.Product;

import java.util.Date;
import java.util.List;

public interface OrderService {
    void order(DtoOrder dtoOrder);
    List<Orders> getOrderByAccount(String account);
    List<Orders> getListOrder(Date startDate, Date endDate);
    Orders findById(int id);
    void save(Orders orders);
    void delete(int id);
}
