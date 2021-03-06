package com.ekthasol.asurance.service.savequote;

import org.springframework.beans.factory.annotation.Autowired;

import com.ekthasol.asurance.dao.savequote.SaveQuoteDAO;
import com.ekthasol.asurance.models.Address;
import com.ekthasol.asurance.models.Customer;
import com.ekthasol.asurance.models.CustomerInfo;
import com.ekthasol.asurance.models.Quote;
import com.ekthasol.asurance.models.Vehicle;

public class SaveQuoteService {

	@Autowired
	SaveQuoteDAO saveQuoteDAO;
	
	public boolean saveQuote(Customer customer,Address address,Vehicle vehicle,Quote quote,CustomerInfo customerInfo){
		
		return saveQuoteDAO.saveQuote(customer, address, vehicle, quote, customerInfo);
	}
}
