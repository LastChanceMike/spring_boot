package com.indus_crud.new_crud.controller;

import com.indus_crud.new_crud.model.User;
import com.indus_crud.new_crud.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Timestamp;
import java.time.LocalDateTime;

@Controller
public class MainController {

    @Autowired
    UserRepository repository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView doHome(){
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("lists", repository.findAll());
        return modelAndView;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView seve(@RequestParam("id") String id,
                             @RequestParam("name") String name,
                             @RequestParam("age") Integer age,
                             @RequestParam("created_date") String createdDate){
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        User user;
        if (!id.isEmpty()){
            user = repository.findById(Integer.parseInt(id)).get();
            user.setCreated_date(Timestamp.valueOf(createdDate));
        } else {
            user = new User();
            user.setCreated_date(Timestamp.valueOf(LocalDateTime.now()));
        }
        user.setName(name);
        user.setAge(age);

        repository.save(user);
        return modelAndView;
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView get(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("view");
        modelAndView.addObject("user", repository.findById(id).get());
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("redirect:/");
        repository.deleteById(id);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView update(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView("edit");
        modelAndView.addObject("user", repository.findById(id).get());
        return modelAndView;
    }

}
