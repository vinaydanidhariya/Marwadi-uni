package com.example.vinay;

// MainActivity.java
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;

public class calculator extends AppCompatActivity {

    EditText no1 , no2;
    Button add ,mul ,div , sub,equal;
    TextView answer;
    double ans = 0;  // global variable

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calculator);

        // for text views
        no1 = findViewById(R.id.first_no);
        no2 = findViewById(R.id.second_no);

        // for button with operations
        add = findViewById(R.id.add);

        mul = findViewById(R.id.mul);
        div = findViewById(R.id.div);
        sub = findViewById(R.id.sub);

        // for equal to button
        equal = findViewById(R.id.equals);

        // for answer field
        answer = findViewById(R.id.answer);
        add.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double a = Double.parseDouble(no1.getText().toString());
                double b = Double.parseDouble(no2.getText().toString());
                ans = a +b;
            }
        });

        sub.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double a = Double.parseDouble(no1.getText().toString());
                double b = Double.parseDouble(no2.getText().toString());
                ans = a - b;
            }
        });

        mul.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double a = Double.parseDouble(no1.getText().toString());
                double b = Double.parseDouble(no2.getText().toString());
                ans = a*b;
            }
        });
        div.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                double a = Double.parseDouble(no1.getText().toString());
                double b = Double.parseDouble(no2.getText().toString());
                ans = a/b;
            }
        });

        equal.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String ans1 = String.valueOf(ans);
                answer.setText(ans1);
                ans= 0;
            }
        });
    }

}
