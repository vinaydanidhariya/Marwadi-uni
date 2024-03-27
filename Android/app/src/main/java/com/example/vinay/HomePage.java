package com.example.vinay;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class HomePage extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_page);

        TextView textViewUsername = findViewById(R.id.textViewUsername);

        // Retrieve username from intent
        String username = getIntent().getStringExtra("username");

        // Display username in TextView
        textViewUsername.setText("Welcome, " + username + "!");
    }
}