public class StockPurchase {
    private Stock stock;
    private int shares;

    public StockPurchase(Stock stockobject, int numShares) {
        stock = new Stock(stockobject);
        shares = numShares;
    }

    public Stock getStock() {
        return new Stock(stock);
    }

    public int getShares() {
        return shares;
    }

    public double getCost() {
        return shares * stock.getSharePrice();
    }

}
