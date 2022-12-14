package entity;

import java.math.BigDecimal;

public class Merchandise {
    private Integer item_id;
    private String item_name;
    private BigDecimal item_price;
    private String effect;
    private String description;
    private int status;

    public Merchandise() {
    }

    public Merchandise(Integer item_id, String item_name, BigDecimal item_price, String effect, String description, int status) {
        this.item_id = item_id;
        this.item_name = item_name;
        this.item_price = item_price;
        this.effect = effect;
        this.description = description;
        this.status = status;
    }

    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
    }

    public String getItem_name() {
        return item_name;
    }

    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }

    public BigDecimal getItem_price() {
        return item_price;
    }

    public void setItem_price(BigDecimal item_price) {
        this.item_price = item_price;
    }

    public String getEffect() {
        return effect;
    }

    public void setEffect(String effect) {
        this.effect = effect;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "merchandise{" +
                "item_id=" + item_id +
                ", item_name='" + item_name + '\'' +
                ", item_price=" + item_price +
                ", effect='" + effect + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                '}';
    }
}
