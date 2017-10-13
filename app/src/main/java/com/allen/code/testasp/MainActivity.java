package com.allen.code.testasp;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends Activity implements View.OnClickListener {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        findViewById(R.id.button).setOnClickListener(this);
    }

    public void onSecondButtonClicked(View view) {
//        Toast.makeText(this, name, Toast.LENGTH_SHORT).show();
//        showName();

//        MainActivity.setText(this);
        sigleton();
    }

    private User sigleton() {
        return User.news();
    }

    @Override
    public void onClick(View v) {
        onSecondButtonClicked(v);
    }


}
