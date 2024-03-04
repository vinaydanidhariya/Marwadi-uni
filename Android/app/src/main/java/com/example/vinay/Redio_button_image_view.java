package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

public class Redio_button_image_view extends AppCompatActivity {

    ImageView imageView;
    RadioGroup rg;
    RadioButton btn_india, btn_japan, btn_russia,btn_usa;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_redio_button_image_view);
    rg = findViewById(R.id.radioGrp);
    imageView = findViewById(R.id.imgView);

    rg.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            RadioButton rb=(RadioButton)findViewById(i);
            String name = rb.getText().toString();
            Toast.makeText(getApplicationContext(),name,Toast.LENGTH_SHORT).show();

            if(name.equals("India")){
                imageView.setImageResource(R.drawable.india);
            } else if (name.equals("Usa")) {
                imageView.setImageResource(R.drawable.usa);
            }else if (name.equals("Russia")) {
                imageView.setImageResource(R.drawable.russia);
            }
            else if (name.equals("Japan")) {
                imageView.setImageResource(R.drawable.japan);
            }

        }
    });


    }
}