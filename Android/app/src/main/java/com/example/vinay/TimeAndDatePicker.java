package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Build;
import android.os.Bundle;
import android.widget.DatePicker;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;

public class TimeAndDatePicker extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_time_and_date_picker);
        TimePicker tp = findViewById(R.id.timePicker);
        DatePicker dp = findViewById(R.id.datePicker);

        TextView textView = findViewById(R.id.tpTime);
        TextView datetextView = findViewById(R.id.txtDatePicker);


        tp.setOnTimeChangedListener(new TimePicker.OnTimeChangedListener() {
            @Override
            public void onTimeChanged(TimePicker timePicker, int i, int i1) {
                textView.setText("time is "+tp.getHour()+" "+tp.getMinute());
            }
        });
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            dp.setOnDateChangedListener(new DatePicker.OnDateChangedListener() {
                @Override
                public void onDateChanged(DatePicker datePicker, int i, int i1, int i2) {
                    datetextView.setText("date "+(dp.getMonth()+1)+" "+ dp.getDayOfMonth());
                }
            });
        }
    }
}