package com.example.vinay;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import androidx.appcompat.app.AppCompatActivity;

import com.example.vinay.DetailActivity;
import com.example.vinay.ListItem;
import com.example.vinay.R;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private ListView listView;
    private List<ListItem> dataList;
    private ArrayAdapter<ListItem> adapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        listView = findViewById(R.id.listView);
        // Initialize data
        initData();

        // Initialize adapter with data
        adapter = new ArrayAdapter<>(this, R.layout.list_item, R.id.textView, dataList);
        listView.setAdapter(adapter);

        // Set item click listener
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                // Handle item click, e.g., start a new activity with Intent
                ListItem selectedItem = dataList.get(position);
                Intent intent = new Intent(MainActivity.this, DetailActivity.class);
                intent.putExtra("selectedItem", selectedItem.getText());

                startActivity(intent);
            }
        });
    }

    private void initData() {
        // Create a simple list of ListItem objects
        dataList = new ArrayList<>();
        dataList.add(new ListItem("Item 1"));
        dataList.add(new ListItem("Item 5"));
        dataList.add(new ListItem("Item 3"));
        dataList.add(new ListItem("Item 4"));
        dataList.add(new ListItem("Item 5"));
    }
}
