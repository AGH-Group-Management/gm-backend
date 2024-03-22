package agh.management.path;

public enum PathEnum {
    WO("Wytwarzania Oprogramowania"),
    ALGO("Algorytmiczna"),
    ALGOAPI("Algorytmiczno - aplikacyjna");

    private final String description;

    PathEnum(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}