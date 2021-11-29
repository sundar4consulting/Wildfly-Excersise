package org.samples.wildfly.undertow.websocket.programmatic;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.websocket.Endpoint;
import javax.websocket.EndpointConfig;
import javax.websocket.MessageHandler;
import javax.websocket.Session;

/**
 * @author Arun Gupta
 */
public class MyProgrammaticEndpoint extends Endpoint {

    @Override
    public void onOpen(final Session session, EndpointConfig ec) {
        session.addMessageHandler(new MessageHandler.Whole<String>() {

            @Override
            public void onMessage(String text) {
                try {
                    session.getBasicRemote().sendText(text);
                } catch (IOException ex) {
                    Logger.getLogger(MyProgrammaticEndpoint.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });
    }
}
