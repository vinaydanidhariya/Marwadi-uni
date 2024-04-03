package com.example.vinay.Ex_AlarmManager;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;

import com.example.vinay.MainActivity;
import com.example.vinay.R;

public class Ex_AlarmManager extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ex_alarm_manager);

        Button btn = findViewById(R.id.Ex_alarmManager);
        btn.setOnClickListener(view ->
                {
                    AlarmManager manager = (AlarmManager) getSystemService(ALARM_SERVICE);
                    Intent intent = new Intent(Ex_AlarmManager.this,AlarmNotification.class);
                    PendingIntent pendingIntent = PendingIntent.getBroadcast(Ex_AlarmManager.this, 0,intent,PendingIntent.FLAG_IMMUTABLE);
                    manager.set(AlarmManager.RTC_WAKEUP,3000,pendingIntent);
                }
                );
    }
}