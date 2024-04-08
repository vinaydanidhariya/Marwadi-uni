package com.example.vinay.Ex_AlarmManager;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;

import androidx.core.app.NotificationCompat;

import com.example.vinay.R;

public class AlarmNotification extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        // Show a toast message to ensure the broadcast is received
        Toast.makeText(context, "Alarm Triggered", Toast.LENGTH_SHORT).show();

        // Create a notification channel for devices running Android Oreo (API 26) or higher
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationChannel channel = new NotificationChannel("1", "testApp", NotificationManager.IMPORTANCE_HIGH);
            notificationManager.createNotificationChannel(channel);
        }

        // Build the notification
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "1")
                .setSmallIcon(R.drawable.ic_launcher_background)
                .setContentTitle("This is Hardik Chavda")
                .setContentText("Welcome to Geetanjali")
                .setAutoCancel(true);

        // Notify
        notificationManager.notify(1, builder.build());
    }
}
