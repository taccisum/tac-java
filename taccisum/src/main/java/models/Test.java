package models;

public class Test {
	private int id;
	private String name;

	public int getId() {
		return id;
	}

	public void setId(int userId) {
		this.id = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String userName) {
		this.name = userName;
	}

	@Override
	public String toString() {
		return this.id + ": " + this.name + "\r\n";
	}
}
