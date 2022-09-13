package products;

import java.util.Objects;

public class Product implements java.io.Serializable {
	private String pnum, pname, pdate, pcnt;

	public Product() {
		
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getPcnt() {
		return pcnt;
	}

	public void setPcnt(String pcnt) {
		this.pcnt = pcnt;
	}

	@Override
	public String toString() {
		return "Product [pnum=" + pnum + ", pname=" + pname + ", pdate=" + pdate + ", pcnt=" + pcnt + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(pcnt, pdate, pname, pnum);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(pcnt, other.pcnt) && Objects.equals(pdate, other.pdate)
				&& Objects.equals(pname, other.pname) && Objects.equals(pnum, other.pnum);
	}
	
	
	
}
