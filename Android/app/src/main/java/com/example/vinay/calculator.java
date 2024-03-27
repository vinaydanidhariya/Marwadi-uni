package com.example.vinay;

// MainActivity.java
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class calculator extends AppCompatActivity {

    private TextView resultTextView;
    private String operand1 = "";
    private String operand2 = "";
    private String operator = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calculator);

        resultTextView = findViewById(R.id.resultTextView);
    }

    public void onDigitClicked(View view) {
        String digit = ((Button) view).getText().toString();
        if (operator.isEmpty()) {
            operand1 += digit;
            resultTextView.setText(operand1);
        } else {
            operand2 += digit;
            resultTextView.setText(operand2);
        }
    }

    public void onOperatorClicked(View view) {
        operator = ((Button) view).getText().toString();
    }

    public void onClearClicked(View view) {
        operand1 = "";
        operand2 = "";
        operator = "";
        resultTextView.setText("");
    }

    public void onEqualsClicked(View view) {
        if (!operand1.isEmpty() && !operand2.isEmpty() && !operator.isEmpty()) {
            double num1 = Double.parseDouble(operand1);
            double num2 = Double.parseDouble(operand2);
            double result = 0.0;
            switch (operator) {
                case "+":
                    result = num1 + num2;
                    break;
                case "-":
                    result = num1 - num2;
                    break;
                case "*":
                    result = num1 * num2;
                    break;
                case "/":
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        resultTextView.setText("Error: Division by zero");
                        return;
                    }
                    break;
                case "%":
                    if (num2 != 0) {
                        result = num1 % num2;
                    } else {
                        resultTextView.setText("Error: Modulo by zero");
                        return;
                    }
                    break;
                default:
                    resultTextView.setText("Error: Invalid operator");
                    return;
            }
            resultTextView.setText(String.valueOf(result));
        }
    }
}
