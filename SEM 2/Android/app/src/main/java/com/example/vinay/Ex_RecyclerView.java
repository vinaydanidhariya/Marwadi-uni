package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import java.util.ArrayList;
import java.util.List;

public class Ex_RecyclerView extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_recycler_view);
        RecyclerView recyclerView = findViewById(R.id.recyclerView);
        List<Item> item = new ArrayList<Item>();
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        item.add(new Item("john","HELLO@MY.COM",R.drawable.img));
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(new ReView_MyAdapter(getApplicationContext(),item));
    }
}