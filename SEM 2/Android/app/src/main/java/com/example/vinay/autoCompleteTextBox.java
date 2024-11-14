package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.Spinner;

public class autoCompleteTextBox extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_auto_complete_text_box);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
                android.R.layout.simple_dropdown_item_1line, COUNTRIES);
        AutoCompleteTextView textView = (AutoCompleteTextView)
                findViewById(R.id.autoCompleteTextView);
        textView.setAdapter(adapter);

        MultiAutoCompleteTextView MultiTextView = (MultiAutoCompleteTextView)
                findViewById(R.id.multiAutoCompleteTextView);
        MultiTextView.setAdapter(adapter);
        MultiTextView.setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());

        Spinner spinner = findViewById(R.id.planets_spinner);
        spinner.setAdapter(adapter);
    }

    private static final String[] COUNTRIES = new String[] {
            "Belgium", "France", "Italy", "Germany", "Spain"
    };

}