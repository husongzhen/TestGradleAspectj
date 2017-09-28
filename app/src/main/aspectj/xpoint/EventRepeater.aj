package xpoint;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import android.view.View;
import com.allen.code.testasp.MainActivity;

import static android.R.attr.name;
import java.lang.String;


/**
 * Created by Archinamon on 10/6/15.
 */
aspect EventRepeater {




    public static String MainActivity.name = "husongzhen";


    public static void MainActivity.setText(Context context){
        Toast.makeText(context, "setText", Toast.LENGTH_SHORT).show();
    }


    pointcut event(): execution(* MainActivity.on*Clicked(View));

    after() returning: event() {
        final MainActivity ctx = (MainActivity) thisJoinPoint.getTarget();
        Log.e("log", ctx.getClass().getName());
        Toast.makeText(ctx, ctx.name, Toast.LENGTH_SHORT).show();
    }
}
