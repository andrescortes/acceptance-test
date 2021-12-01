package karate.client;

import com.intuit.karate.junit5.Karate;

public class ClientRunner {

    @Karate.Test
    Karate client() {
        return Karate.run("register").relativeTo(getClass());
    }
}
