package com.example.vinay;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

public class ReView_MyAdapter extends RecyclerView.Adapter<MyViewHolder> {

    Context context;
    List<Item> item;

    public ReView_MyAdapter(Context context, List<Item> item) {
        this.context = context;
        this.item = item;
    }

    @NonNull
    @Override
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        return new MyViewHolder(LayoutInflater.from(context).inflate(R.layout.item_view,parent,false));
    }

    @Override
    public void onBindViewHolder(@NonNull MyViewHolder holder, int position) {
        holder.nameView.setText(item.get(position).getName());
        holder.emailView.setText(item.get(position).getEmail());
        holder.imageView.setImageResource(item.get(position).getImage());
    }

    @Override
    public int getItemCount() {
        return item.size();
    }
}
