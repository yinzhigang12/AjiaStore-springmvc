package com.ajiatech.yzg.common.utils;

import java.util.Random;

public class IDUtils {
    public static String genImageName() {
        long millis = System.currentTimeMillis();
        Random random = new Random();
        int end3 = random.nextInt(999);
        String str = millis + String.format("%03d", end3);
        return str;
    }

    public static long genItemId() {
        long millis = System.currentTimeMillis();
        Random random = new Random();
        int end2 = random.nextInt(99);
        String str = millis + String.format("%02d", end2);
        long id = new Long(str);
        return id;
    }

    public static String genOrderId() {
        Random r = new Random();
        int num = r.nextInt(9000000) + 1000000;
        return num + "" + System.currentTimeMillis();
    }

    public static void main(String[] args) {
        for (int i = 0; i < 100; i++) {
            System.out.println(genItemId());
        }
    }
}
