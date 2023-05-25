package com.app.nepshop.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;

import androidx.cardview.widget.CardView;

import com.app.nepshop.R;
import com.app.nepshop.settings.backup.BackupActivity;
import com.app.nepshop.settings.categories.CategoriesActivity;
import com.app.nepshop.settings.order_type.OrderTypeActivity;
import com.app.nepshop.settings.payment_method.PaymentMethodActivity;
import com.app.nepshop.settings.shop.ShopInformationActivity;
import com.app.nepshop.settings.unit.UnitActivity;
import com.app.nepshop.utils.BaseActivity;

public class SettingsActivity extends BaseActivity {


    CardView cardShopInfo, cardBackup,cardCategory,cardPaymentMethod,cardOrderType,cardUnit;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_settings);

        getSupportActionBar().setHomeButtonEnabled(true); //for back button
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);//for back button
        getSupportActionBar().setTitle(R.string.action_settings);


        cardShopInfo = findViewById(R.id.card_shop_info);
        cardBackup = findViewById(R.id.card_backup);
        cardCategory=findViewById(R.id.card_category);
        cardPaymentMethod=findViewById(R.id.card_payment_method);
        cardOrderType=findViewById(R.id.card_order_type);
        cardUnit=findViewById(R.id.card_unit);


        //for interstitial ads show
//        Utils utils=new Utils();
//        utils.interstitialAdsShow(SettingsActivity.this);

        cardShopInfo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(SettingsActivity.this, ShopInformationActivity.class);
                startActivity(intent);
            }
        });



        cardCategory.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(SettingsActivity.this, CategoriesActivity.class);
                startActivity(intent);
            }
        });


        cardOrderType.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(SettingsActivity.this, OrderTypeActivity.class);
                startActivity(intent);
            }
        });

        cardUnit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(SettingsActivity.this, UnitActivity.class);
                startActivity(intent);
            }
        });


        cardPaymentMethod.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(SettingsActivity.this, PaymentMethodActivity.class);
                startActivity(intent);
            }
        });


        cardBackup.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(SettingsActivity.this, BackupActivity.class);
                startActivity(intent);
            }
        });


    }


    //for back button
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {

            case android.R.id.home:
                // app icon in action bar clicked; goto parent activity.
                this.finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
}
