package com.example.websocket;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class EchoController {

    @MessageMapping("/webs")
    @SendTo("/topic/echo")
    public Message echo(Message message) throws Exception {
        return message;
    }
}