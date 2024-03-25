package agh.management.request;

import agh.management.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/request")
@CrossOrigin
public class RequestController {

    private final RequestService requestService;

    public RequestController(RequestService requestService) {
        this.requestService = requestService;
    }

    @PostMapping("/create")
    public ResponseEntity<Request> createRequest(@RequestBody RequestDTO requestDTO){
        User user = requestDTO.user();
        String description = requestDTO.description();
        Request createdRequest = requestService.createRequest(user, description);
        return ResponseEntity.ok(createdRequest);
    }
}
