package xpoint;

import android.util.Log;
import android.widget.Toast;
import android.view.View;
import com.allen.code.testasp.MainActivity;

import static android.R.attr.name;


/**
 * Created by Archinamon on 10/6/15.
 */
aspect EventRepeater {




    public String MainActivity.name = "husongzhen";

    pointcut event(): execution(* MainActivity.on*Clicked(View));

    after() returning: event() {
        final MainActivity ctx = (MainActivity) thisJoinPoint.getTarget();
        Log.e("log", ctx.getClass().getName());
        Toast.makeText(ctx, ctx.name, Toast.LENGTH_SHORT).show();
    }
}
