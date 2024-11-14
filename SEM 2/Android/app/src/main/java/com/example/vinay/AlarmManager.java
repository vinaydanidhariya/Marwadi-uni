package com.example.vinay;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class AlarmManager extends AppCompatActivity {
    private static final int ALARM_INTERVAL = 60 * 1000; // 1 minute interval
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        scheduleAlarm();
    }
    private void scheduleAlarm() {
        AlarmManager alarmManager = (AlarmManager) getSystemService(Context.ALARM_SERVICE);
        Intent alarmIntent = new Intent(this, AlarmReceiver.class);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(this, 0, alarmIntent, 0);

        long currentTime = System.currentTimeMillis();
        long triggerTime = currentTime + ALARM_INTERVAL;

        alarmManager.setRepeating(AlarmManager.RTC_WAKEUP, triggerTime, ALARM_INTERVAL, pendingIntent);
    }
    public static class AlarmReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {
            // Handle alarm event here
            Toast.makeText(context, "Alarm triggered", Toast.LENGTH_SHORT).show();
        }
    }
}