package org.tour.dao;
 
import java.util.List;

import org.tour.model.CartInfo;
import org.tour.model.OrderDetailInfo;
import org.tour.model.OrderInfo;
import org.tour.model.PaginationResult;
 
public interface OrderDAO {
 
    public void saveOrder(CartInfo cartInfo);
 
    public PaginationResult<OrderInfo> listOrderInfo(int page,
            int maxResult, int maxNavigationPage);
    
    public OrderInfo getOrderInfo(String orderId);
    
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId);
 
}