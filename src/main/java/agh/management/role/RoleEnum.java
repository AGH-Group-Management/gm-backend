package agh.management.role;

public enum RoleEnum {
    STUDENT("Student"),
    DEAN("Dziekan"),
    FOREMAN("Starosta");

    private final String description;

    RoleEnum(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
