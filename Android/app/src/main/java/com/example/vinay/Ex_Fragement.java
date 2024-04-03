package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

import android.os.Bundle;
import android.widget.Button;

import com.example.vinay.fragment.One;
import com.example.vinay.fragment.Two;

public class Ex_Fragement extends AppCompatActivity {
    Button homeBtn,aboutBtn;
    Fragment fragment;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ex_fragement);

    homeBtn=findViewById(R.id.f_btn_home);
    aboutBtn=findViewById(R.id.f_btn_about);

    homeBtn.setOnClickListener(view -> {
        fragment = new One();
        FragmentManager fm = getSupportFragmentManager();
        FragmentTransaction ft = fm.beginTransaction();
        ft.replace(R.id.home_fragment,fragment).commit();
    });
    aboutBtn.setOnClickListener(view -> {
        fragment = new Two();
        FragmentManager fm = getSupportFragmentManager();
        FragmentTransaction ft = fm.beginTransaction();
        ft.replace(R.id.home_fragment,fragment).commit();
    });
    }
}