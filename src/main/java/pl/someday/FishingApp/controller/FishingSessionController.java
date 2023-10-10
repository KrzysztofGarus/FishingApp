package pl.someday.FishingApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import pl.someday.FishingApp.model.FishingSession;
import pl.someday.FishingApp.repository.FishingSessionRepository;
import pl.someday.FishingApp.repository.FishingSpotRepository;
import pl.someday.FishingApp.model.User;
import pl.someday.FishingApp.repository.UserRepository;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/user/session")
public class FishingSessionController {

    private final FishingSessionRepository fishingSessionRepository;
    private final FishingSpotRepository fishingSpotRepository;

    @Autowired
    public FishingSessionController(UserRepository userRepository, FishingSessionRepository fishingSessionRepository, FishingSpotRepository fishingSpotRepository) {
        this.fishingSessionRepository = fishingSessionRepository;
        this.fishingSpotRepository = fishingSpotRepository;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                setValue(LocalDate.parse(text, DateTimeFormatter.ISO_DATE));
            }
        });
    }

    @GetMapping("/add")
    public String addSession(Model model){
        model.addAttribute("fishingSession", new FishingSession());
        model.addAttribute("spotList", fishingSpotRepository.findAll());
        return "/user/session/session-add";
    }

    @PostMapping("/add")
    public String addSessionForUser(@AuthenticationPrincipal User user, FishingSession fishingSession){

        fishingSession.setUser(user);
        fishingSessionRepository.save(fishingSession);
        return "redirect:/user/session/all";
    }

    @GetMapping("/delete")
    public String deleteSessionID(@RequestParam Long id, Model model){
        model.addAttribute("fishingSession", fishingSessionRepository.getFishingSessionById(id));
        return "/user/session/session-delete";
    }
    @PostMapping("/delete")
    public String deleteSession(@RequestParam Long id) {
        FishingSession fishingSession = fishingSessionRepository.getFishingSessionById(id);
        fishingSessionRepository.delete(fishingSession);
        return "redirect:/user/session/all";
    }

    @GetMapping("/all")
    public String showUserSessions(@AuthenticationPrincipal User user, Model model){
        model.addAttribute("fishingSessions", fishingSessionRepository.findByUserUsernameOrderByDateDesc(user.getUsername()));
        return "/user/session/session-list";
    }

    @GetMapping("/update")
    public String editSession(@RequestParam Long id, Model model){
        FishingSession fishingSession = fishingSessionRepository.getFishingSessionById(id);
        model.addAttribute("fishingSession", fishingSession);
        model.addAttribute("spotList", fishingSpotRepository.findAll());
        return "/user/session/session-update";
    }

    @PostMapping("/update")
    public String editSession(@RequestParam Long id, @ModelAttribute("fishingSession") FishingSession updatedSession) {
        FishingSession fishingSession = fishingSessionRepository.getFishingSessionById(id);
        fishingSession.setDate(updatedSession.getDate());
        fishingSession.setFishingSpot(updatedSession.getFishingSpot());
        fishingSessionRepository.save(fishingSession);
        return "redirect:/user/session/all";
    }

}
