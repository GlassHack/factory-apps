.class public interface abstract Lcom/google/glass/android/app/PendingIntentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
.end method

.method public abstract getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
.end method

.method public abstract getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
.end method

.method public abstract getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
.end method

.method public abstract getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
.end method

.method public abstract getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
.end method

.method public abstract readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
.end method
