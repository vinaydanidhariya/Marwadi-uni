package com.example.vinay;

import android.os.Bundle;
import android.os.Handler;
import android.widget.DigitalClock;
import android.widget.ProgressBar;

import androidx.appcompat.app.AppCompatActivity;
import android.widget.AnalogClock;


public class prgressBar extends AppCompatActivity {
    private ProgressBar progressBar;
    private int progressStatus = 0;
    private Handler handler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_prgress_bar);

        progressBar = findViewById(R.id.progressBar);

        // Start long running operation in a background thread
        new Thread(() -> {
            while (progressStatus < 100) {
                progressStatus += 1;

                // Update the progress bar
                handler.post(new Runnable() {
                    public void run() {
                        progressBar.setProgress(progressStatus);
                    }
                });

                try {
                    // Sleep for 50 milliseconds to simulate a long operation
                    Thread.sleep(50);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }).start();
        // Get the AnalogClock view
//        AnalogClock analogClock = findViewById(R.id.analogClock);
//
//        // Set the time (you can set the hour and minute)
//        analogClock.setCurrentHour(10); // Set hour
//        analogClock.setCurrentMinute(30); // Set minute
//        // Get the DigitalClock view
//        DigitalClock digitalClock = findViewById(R.id.digitalClock);
//
//        // Set the time in milliseconds since epoch
//        digitalClock.setTime(System.currentTimeMillis());
    }
}