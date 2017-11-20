.class public interface abstract Lcom/google/glass/context/BroadcastReceiverRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
