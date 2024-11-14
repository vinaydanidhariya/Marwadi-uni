package com.example.vinay;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;


public class callEdittext extends AppCompatActivity {
    private EditText editTextPhoneNumber;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_call_edittext);

        editTextPhoneNumber = findViewById(R.id.editTextPhoneNumber);

        Button buttonCall = findViewById(R.id.buttonCall);
        buttonCall.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                callPhoneNumber();
            }
        });
    }

    private void callPhoneNumber() {
        String phoneNumber = editTextPhoneNumber.getText().toString().trim();
        if (!phoneNumber.isEmpty()) {
            Intent intent = new Intent(Intent.ACTION_DIAL);
            intent.setData(Uri.parse("tel:" + phoneNumber));
            startActivity(intent);
        }
    }
}