package dao;

import java.util.List;

import domian.House;
import domian.Page;

public interface HouseDao {

	House showHouseByName(String name);
	List<House> findHouse(String regiArg, String subArg, String rentArg, String areaArg, String typeArg, Page page);

	int countHouse(String regiArg, String subArg, String rentArg, String areaArg, String typeArg);
	
    List<House> searchHouseByName(String name);
    
    int countHouseByName(String name);
}
