package com.example.vinay;

// MainActivity.java
import android.os.Bundle;
import android.widget.TextView;
import android.widget.ToggleButton;
import androidx.appcompat.app.AppCompatActivity;

public class ToggleButtonEx extends AppCompatActivity {

    private ToggleButton ToggleBtn;
    private TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_toggle_button);

        ToggleBtn = findViewById(R.id.toggleButton);
        textView = findViewById(R.id.textView);

        ToggleBtn.setOnCheckedChangeListener((buttonView, isChecked) -> {
            if (isChecked) {
                textView.setText("Toggle Button is ON");
            } else {
                textView.setText("Toggle Button is OFF");
            }
        });
    }
}
