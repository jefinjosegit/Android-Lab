package com.example.sjcet.q3;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;

public class MainActivity extends AppCompatActivity {

    private FrameLayout frameLayout;
    private Button toggleButton;
    private int currentLayout = R.layout.layout_image1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        frameLayout = findViewById(R.id.frameLayout);
        toggleButton = findViewById(R.id.toggleButton);

        toggleButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Toggle between layout_image1 and layout_image2
                if (currentLayout == R.layout.layout_image1) {
                    frameLayout.removeAllViews();
                    getLayoutInflater().inflate(R.layout.layout_image2, frameLayout);
                    currentLayout = R.layout.layout_image2;
                } else {
                    frameLayout.removeAllViews();
                    getLayoutInflater().inflate(R.layout.layout_image1, frameLayout);
                    currentLayout = R.layout.layout_image1;
                }
            }
        });
    }
}