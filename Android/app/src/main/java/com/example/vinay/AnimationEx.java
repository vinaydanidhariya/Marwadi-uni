package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;

public class AnimationEx extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_animation_ex);
        TextView txt = findViewById(R.id.textView2);
        Button btnAlpha = findViewById(R.id.Alpha);
        Button btnRotate = findViewById(R.id.btnRotate);
        Button btnScale = findViewById(R.id.scaleId);
        Button btnTrans = findViewById(R.id.btnTrans);

        btnAlpha.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Animation animation = AnimationUtils.loadAnimation(AnimationEx.this,R.anim.alpha);
                txt.startAnimation(animation);
            }
        });
        btnRotate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Animation animation = AnimationUtils.loadAnimation(AnimationEx.this,R.anim.rotate);
                txt.startAnimation(animation);
            }
        });
        btnScale.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Animation animation = AnimationUtils.loadAnimation(AnimationEx.this,R.anim.scale);
                txt.startAnimation(animation);
            }
        });

        btnTrans.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Animation animation = AnimationUtils.loadAnimation(AnimationEx.this,R.anim.translate);
                txt.startAnimation(animation);
            }
        });

    }
}