package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    TextView txt_view;
    Button Btn_click;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        txt_view = findViewById(R.id.txt_box);
        Btn_click = findViewById(R.id.btn_click);

        Btn_click.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                txt_view.setText("RAM");
            }
        });
    }
}