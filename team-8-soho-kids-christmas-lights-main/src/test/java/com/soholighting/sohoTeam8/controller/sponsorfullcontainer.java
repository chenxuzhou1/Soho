package com.soholighting.sohoTeam8.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.soholighting.sohoTeam8.model.Sponsors;
import com.soholighting.sohoTeam8.repository.SponsorRepository;
import com.soholighting.sohoTeam8.service.SponsorsService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.util.ArrayList;
import java.util.List;
import static org.mockito.Mockito.*;

@SpringBootTest
@AutoConfigureMockMvc
public class sponsorfullcontainer {
    @Autowired
    private MockMvc mockMvc;
    @Mock
    private SponsorsService sponsorsService;
    @BeforeEach
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }
    @Test
    public void testShowSponsors() throws Exception {
        // Mock sponsor data
        List<Sponsors> sponsors = new ArrayList<>();
        sponsors.add(new Sponsors(1, "Sponsor1", "http://sponsor1.com", "logo1.png"));
        // Stub sponsorRepository to return mock sponsor data
        when(sponsorsService.getAllSponsors()).thenReturn(sponsors);
        // Perform GET request to /sponsors endpoint
        mockMvc.perform(MockMvcRequestBuilders.get("/sponsors"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().string(org.hamcrest.Matchers.containsString("ponsor")));
    }


}
