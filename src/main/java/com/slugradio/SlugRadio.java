package com.slugradio;

import net.dv8tion.jda.api.JDABuilder;
import javax.security.auth.login.LoginException;

public class SlugRadio {
    public static void main(String[] args) throws LoginException {
        String token = System.getenv("DISCORD_TOKEN");
        if (token == null || token.isEmpty()) {
            System.err.println("Missing DISCORD_TOKEN environment variable.");
            return;
        }
        JDABuilder.createDefault(token).build();
        System.out.println("SlugRadio is online!");
    }
}
