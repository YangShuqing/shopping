package com.buaa.shopping.listener;


import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;


/**
 * Application Lifecycle Listener implementation class ShopCarListener
 *
 */

public class ShopCarListener implements HttpSessionAttributeListener {

	
	
	/**
	 * Default constructor.
	 */
	public ShopCarListener() {
		
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent e) {
		// TODO Auto-generated method stub
//		
//		ArrayList<?> list = (ArrayList<?>) e.getSession().getAttribute("shopcar");
//		if (list != null) {
//			if(list.size()<1)
//				return ;
//			for(Object o:list){
//				Car c = (Car)o;
//				carService.save(c);
//			}
//		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
	}

}
