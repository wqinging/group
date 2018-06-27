package service;

import java.util.List;

import domian.House;
import domian.Page;

public interface HouseService {
	
	House showHouseByName(String name);

	List<House> showHouse(String regiArg, String subArg, String rentArg, String areaArg, String typeArg, Page page);

	int countHouse(String regiArg, String subArg, String rentArg, String areaArg, String typeArg);

    List<House> searchHouseByName(String name);
    
    int countHouseByName(String name);

    
}
