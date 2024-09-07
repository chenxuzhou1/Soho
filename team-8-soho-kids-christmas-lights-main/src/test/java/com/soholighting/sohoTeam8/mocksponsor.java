package com.soholighting.sohoTeam8;

import com.soholighting.sohoTeam8.model.Sponsors;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.*;

public class mocksponsor {
    @Test
    public void testGetName() {
        // 创建一个模拟的Sponsors对象
        Sponsors sponsors = mock(Sponsors.class);

        // 设置模拟对象的行为
        when(sponsors.getName()).thenReturn("Sponsor 1");

        // 调用被测试的方法
        String actual = sponsors.getName();

        // 验证方法的行为是否符合预期
        Assertions.assertEquals("Sponsor 1", actual);
    }
    @Test
    public void testGetURL() {
        Sponsors sponsors = mock(Sponsors.class);
        when(sponsors.getURL()).thenReturn("https://example.com");
        Assertions.assertEquals("https://example.com", sponsors.getURL());
        String actual = sponsors.getURL();
        Assertions.assertEquals("https://example.com", actual);
    }
}
