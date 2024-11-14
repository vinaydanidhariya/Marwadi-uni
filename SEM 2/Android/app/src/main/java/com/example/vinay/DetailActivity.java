package com.example.vinay;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class DetailActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);

        TextView textViewDetail = findViewById(R.id.textViewDetail);

        // Get data from Intent
        Intent intent = getIntent();
        if (intent != null) {
            String selectedItemText = intent.getStringExtra("selectedItem");
            textViewDetail.setText(selectedItemText);
        }
    }
}
