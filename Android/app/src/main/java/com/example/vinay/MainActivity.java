package com.example.vinay;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;

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
        final ListView list = findViewById(R.id.listViewMain);
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("unit1");

        arrayList.add("adepter");

        arrayList.add("radio button");
        arrayList.add("AutoComplete");
        arrayList.add("6 . WEB VIEW");

        arrayList.add("7.TIME PICKER AND DATE PICKER");
        arrayList.add("8.ANIMATION");





        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<String>(this,android.R.layout.simple_list_item_1, arrayList);
        list.setAdapter(arrayAdapter);
        list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                String clickedItem=(String) list.getItemAtPosition(position);

                if(clickedItem.equals("unit1")){

                    Intent i=new Intent(MainActivity.this,DetailActivity.class);
                    startActivity(i);
                }
               else if(clickedItem.equals("adepter")){

                    Intent i=new Intent(MainActivity.this,listViweAdpeter.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("radio button")){

                    Intent i=new Intent(MainActivity.this,Redio_button_image_view.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("AutoComplete")){

                    Intent i=new Intent(MainActivity.this,autoCompleteTextBox.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("Multi AutoComplete")){

                    Intent i=new Intent(MainActivity.this,autoCompleteTextBox.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("6 . WEB VIEW")){

                    Intent i=new Intent(MainActivity.this,WebViewEx.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("7.TIME PICKER AND DATE PICKER")){

                    Intent i=new Intent(MainActivity.this,TimeAndDatePicker.class);
                    startActivity(i);

                }
                else if(clickedItem.equals("8.ANIMATION")){

                    Intent i=new Intent(MainActivity.this,AnimationEx.class);
                    startActivity(i);

                }


            }
        });

    }
}
