package com.allen.code.testasp;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onSecondButtonClicked(View view) {
//        Toast.makeText(this, name, Toast.LENGTH_SHORT).show();
//        showName();

        MainActivity.setText(this);

    }
}
