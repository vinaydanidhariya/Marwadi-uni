package com.example.vinay;

import android.os.Bundle;
        import android.view.View;
        import android.widget.CheckBox;
        import android.widget.Toast;
        import androidx.appcompat.app.AppCompatActivity;

public class checkBox extends AppCompatActivity {

    private CheckBox checkBox1, checkBox2, checkBox3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_check_box);

        checkBox1 = findViewById(R.id.checkBox1);
        checkBox2 = findViewById(R.id.checkBox2);
        checkBox3 = findViewById(R.id.checkBox3);

        checkBox1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                CheckBox checkBox = (CheckBox) v;
                if (checkBox.isChecked()) {
                    showToast("CheckBox 1 is checked");
                } else {
                    showToast("CheckBox 1 is unchecked");
                }
            }
        });

        checkBox2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                CheckBox checkBox = (CheckBox) v;
                if (checkBox.isChecked()) {
                    showToast("CheckBox 2 is checked");
                } else {
                    showToast("CheckBox 2 is unchecked");
                }
            }
        });

        checkBox3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                CheckBox checkBox = (CheckBox) v;
                if (checkBox.isChecked()) {
                    showToast("CheckBox 3 is checked");
                } else {
                    showToast("CheckBox 3 is unchecked");
                }
            }
        });
    }

    private void showToast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }
}
