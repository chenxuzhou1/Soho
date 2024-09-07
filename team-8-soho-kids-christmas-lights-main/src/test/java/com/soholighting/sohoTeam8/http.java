package com.soholighting.sohoTeam8;

import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;

import static org.assertj.core.api.Assertions.assertThat;


@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
class http {

    @Value(value="${local.server.port}")
    private int port;

    @Autowired
    private TestRestTemplate restTemplate;

    @Test
    public void getmessgaefromhome() throws Exception {
        assertThat(this.restTemplate.getForObject("http://localhost:" + port + "/home",
                String.class)).contains("soho");
    }
    //    this test may get commented out as it will fail when the localhost11
    //    database does not have the correct items in it.
    @Test
    public void dbsponsorTest() throws Exception {
        assertThat(this.restTemplate.getForObject("http://localhost:" + port + "/sponsors",
                String.class)).contains("sponsor");
    }
}
