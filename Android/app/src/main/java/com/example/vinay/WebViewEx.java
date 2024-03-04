package com.example.vinay;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.webkit.WebView;

public class WebViewEx extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_web_view_ex);
        WebView myWebView = (WebView) findViewById(R.id.webview);
        myWebView.loadUrl("https://vinaydanidhariya.github.io/Portfolio-Vinay-Danidhariya/");

    }
}