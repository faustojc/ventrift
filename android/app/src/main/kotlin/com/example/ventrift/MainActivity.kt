package com.example.ventrift

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

class MainActivity : FlutterActivity() {
    val CHANNEL: String = "com.haiztek.workout_app/app_minimizer"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                if (call.method.equals("minimizeApp")) {
                    moveTaskToBack(true)
                    result.success(null)
                }
            }
    }
}
