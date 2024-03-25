package agh.management.request;

import agh.management.user.User;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class RequestService {
    private RequestRepository requestRepository;


    public RequestService(RequestRepository requestRepository){
        this.requestRepository = requestRepository;
    }

    public Request createRequest(User user, String description){
        Request request = new Request();
        request.setUser(user);
        request.setDescription(description);
        Date currentDate = new Date();
        request.setCreatedOn(currentDate);
        request.setModifiedOn(currentDate);
        request.setProgress("Received on: " + currentDate);
        return requestRepository.save(request);
    }
}
