package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.RatingBar;
import android.widget.TextView;

public class ex_rating_bar extends AppCompatActivity {

    private RatingBar ratingBar;
    private TextView ratingValue;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ex_rating_bar);

        ratingBar = findViewById(R.id.ratingBar);
        ratingValue = findViewById(R.id.ratingValue);

        // Set a listener to track changes in the RatingBar
        ratingBar.setOnRatingBarChangeListener(new RatingBar.OnRatingBarChangeListener() {
            @Override
            public void onRatingChanged(RatingBar ratingBar, float rating, boolean fromUser) {
                // Update the TextView to display the current rating value
                ratingValue.setText("Rating: " + rating);
            }
        });
    }
}
