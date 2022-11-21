package fpoly.carshop.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fpoly.carshop.dto.DtoOrder;
import fpoly.carshop.dto.DtoProduct;
import fpoly.carshop.entity.Account;
import fpoly.carshop.entity.OrderProduct;
import fpoly.carshop.entity.OrderProductKey;
import fpoly.carshop.entity.Orders;
import fpoly.carshop.entity.Product;
import fpoly.carshop.entity.StatusContract;
import fpoly.carshop.repository.AccountRepository;
import fpoly.carshop.repository.CodeProductRepository;
import fpoly.carshop.repository.OrderRepository;
import fpoly.carshop.repository.ProductRepository;
import fpoly.carshop.service.CodeProductService;
import fpoly.carshop.service.OrderProductService;
import fpoly.carshop.service.OrderService;

@Service
public class OrderServieImpl implements OrderService {
    @Autowired
    CodeProductRepository codeProductRepository;
    @Autowired
    ProductRepository productRepository;
    @Autowired
    AccountRepository accountRepository;
    @Autowired
    CodeProductService codeProductService;
    @Autowired
    OrderRepository orderRepository;
    @Autowired
    OrderProductService orderProductService;


    @Override
    public void order(DtoOrder dtoOrder) {
//        List<Product> productList = new ArrayList<>();
        Product product1 = null;
        Account account1 = accountRepository.findById(dtoOrder.getAccount()).orElse(null);
        StatusContract statusContract = new StatusContract(1, "Đang Chờ");
        Date date = new Date(System.currentTimeMillis());
        Orders orders = new Orders(dtoOrder.getOrdersId(), date, dtoOrder.getAddress(), dtoOrder.getUserName(), dtoOrder.getPhone(),
                dtoOrder.getTotal(), statusContract, account1);
        Orders order1 = this.orderRepository.save(orders);
        for (DtoProduct p : dtoOrder.getIdProduct()) {
            product1 = productRepository.findById(p.getProductId()).orElse(null);
//            productList.add(product1);
            if (account1 != null && product1 != null) {
                if (product1.getProductQuantity() > 0) {
                    product1.setProductQuantity(product1.getProductQuantity() - p.getProductQuantity());
                }
                OrderProductKey orderProductKey = new OrderProductKey(product1.getProductId(),order1.getOrdersId());
                OrderProduct orderProduct = new OrderProduct(orderProductKey,product1,order1,p.getProductQuantity());
                orderProductService.save(orderProduct);
                productRepository.save(product1);
            }
        }

    }

    @Override
    public List<Orders> getOrderByAccount(String account) {
        System.out.println();
        return this.orderRepository.findAllByAccount_Account(account);
    }

    @Override
    public List<Orders> getListOrder(Date startDate, Date endDate) {

        return this.orderRepository.getList(startDate,endDate);
    }

    @Override
    public Orders findById(int id) {
        return this.orderRepository.findById(id).orElse(null);
    }

    @Override
    public void save(Orders orders) {
        this.orderRepository.save(orders);
    }

    @Override
    public void delete(int id) {
        this.orderRepository.deleteById(id);
    }


}
