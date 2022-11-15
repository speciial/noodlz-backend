package io.github.speciial.clientserver.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.annotation.RegisteredOAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.web.reactive.function.client.ServerOAuth2AuthorizedClientExchangeFilterFunction;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

@RestController
@RequiredArgsConstructor
public class MessageController {

    private final WebClient webClient;

    @GetMapping("/messages")
    public String getMessages(@RegisteredOAuth2AuthorizedClient("messages-client-authorization-code")
                              OAuth2AuthorizedClient authorizedClient) {
        return webClient.get()
                .uri("http://127.0.0.1:8082/messages")
                .attributes(ServerOAuth2AuthorizedClientExchangeFilterFunction.oauth2AuthorizedClient(authorizedClient))
                .retrieve()
                .bodyToMono(String.class)
                .block();
    }

}
