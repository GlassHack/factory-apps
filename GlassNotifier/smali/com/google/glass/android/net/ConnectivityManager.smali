.class public interface abstract Lcom/google/glass/android/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# virtual methods
.method public abstract getActiveNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getAllNetworkInfo()[Landroid/net/NetworkInfo;
.end method

.method public abstract getBackgroundDataSetting()Z
.end method

.method public abstract getNetworkInfo(I)Landroid/net/NetworkInfo;
.end method

.method public abstract getNetworkPreference()I
.end method

.method public abstract isActiveNetworkMetered()Z
.end method

.method public abstract isNetworkTypeValid(I)Z
.end method

.method public abstract setNetworkPreference(I)V
.end method
