package vo;

public class OrderVO {

	private String ItemName;
	private int OnHand;
	private String ItemCode;
	private String WhsCode;
	private int DocNum;
	private String DocDate;
	private int DocEntry;
	private String DocStatus;
	private String DocType;
	private String CardCode;
	
	private String startDate;
	private String endDate;
	private String WhsName;
	private int VisOrder;
	private int Quantity;
	private int Price;
	private int LineTotal;	
	
	
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getItemName() {
		return ItemName;
	}
	public void setItemName(String itemName) {
		ItemName = itemName;
	}
	
	public int getOnHand() {
		return OnHand;
	}
	public void setOnHand(int onHand) {
		OnHand = onHand;
	}
	public String getItemCode() {
		return ItemCode;
	}
	public void setItemCode(String itemCode) {
		ItemCode = itemCode;
	}
	public String getWhsCode() {
		return WhsCode;
	}
	public void setWhsCode(String whsCode) {
		WhsCode = whsCode;
	}
	public int getDocNum() {
		return DocNum;
	}
	public void setDocNum(int docNum) {
		DocNum = docNum;
	}
	public String getDocDate() {
		return DocDate;
	}
	public void setDocDate(String docDate) {
		DocDate = docDate;
	}
	public int getDocEntry() {
		return DocEntry;
	}
	public void setDocEntry(int docEntry) {
		DocEntry = docEntry;
	}
	public String getDocStatus() {
		return DocStatus;
	}
	public void setDocStatus(String docStatus) {
		DocStatus = docStatus;
	}
	public String getDocType() {
		return DocType;
	}
	public void setDocType(String docType) {
		DocType = docType;
	}
	public String getCardCode() {
		return CardCode;
	}
	public void setCardCode(String cardCode) {
		CardCode = cardCode;
	}
	public String getWhsName() {
		return WhsName;
	}
	public void setWhsName(String whsName) {
		WhsName = whsName;
	}
	public int getVisOrder() {
		return VisOrder;
	}
	public void setVisOrder(int visOrder) {
		VisOrder = visOrder;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public int getLineTotal() {
		return LineTotal;
	}
	public void setLineTotal(int lineTotal) {
		LineTotal = lineTotal;
	}
	
	
}
