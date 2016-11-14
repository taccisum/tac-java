package dao;

import java.util.ArrayList;

import models.Test;

public interface TestDao extends Dao {
	public int countAll();
	public ArrayList<Test> selectAll();
	public Test first();
}
