package agh.management.role;

import lombok.Getter;

@Getter
public enum RoleEnum {
    STUDENT("Student"),
    DEAN("Dziekan"),
    FOREMAN("Starosta");

    private final String description;

    RoleEnum(String description) {
        this.description = description;
    }

}
