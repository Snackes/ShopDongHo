package ModelBean;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable{
	private int id;
	private KhachHang kh;
	private List<Item> item;
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public KhachHang getKh() {
		return kh;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int id, KhachHang kh, List<Item> item, int status) {
		super();
		this.id = id;
		this.kh = kh;
		this.item = item;
		this.status = status;
	}
	public void setKh(KhachHang kh) {
		this.kh = kh;
	}
	public List<Item> getItem() {
		return item;
	}
	public void setItem(List<Item> item) {
		this.item = item;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}


}
