package com.yuli.huihao;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

public class MoreActivity extends Activity{
	private TextView zhuxiaoBtn;
	private TextView gengxinBtn;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.modmore);
		
		zhuxiaoBtn = (TextView)findViewById(R.id.more_zhuxiao);
		gengxinBtn = (TextView)findViewById(R.id.more_gengxin);
		
		zhuxiaoBtn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Dialog dlg = new AlertDialog.Builder(MoreActivity.this)
				.setTitle("��ʾ")
				.setMessage("��ȷʵҪע����ǰ�˺Ų����µ�½��")
				.setPositiveButton("ȷ��", new DialogInterface.OnClickListener() {
					
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						Intent intent = new Intent();
						intent.setClass(MoreActivity.this, Userlogin.class);
						startActivity(intent);
						MoreActivity.this.finish();
					}
				}).setNeutralButton("ȡ��", new DialogInterface.OnClickListener() {
					
					public void onClick(DialogInterface dialog, int which) {
						// TODO Auto-generated method stub
						
					}
				}).create();
				dlg.show();
				
			}
		});
	}
}
