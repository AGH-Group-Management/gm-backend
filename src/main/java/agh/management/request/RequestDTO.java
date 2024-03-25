package agh.management.request;

import agh.management.user.User;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;


public record RequestDTO(int id, User user, String description, Date createdOn, Date modifiedOn, String progress) {
    public static RequestDTO convertToDTO(Request request){
        if( request == null){
            return null;
        }
        return new RequestDTO(request.getId(), request.getUser(), request.getDescription(), request.getCreatedOn(), request.getModifiedOn(), request.getProgress());
    }


}