.class public Lcom/google/android/gms/subscribedfeeds/SyncService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/subscribedfeeds/h;

    invoke-virtual {p0}, Lcom/google/android/gms/subscribedfeeds/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/subscribedfeeds/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/subscribedfeeds/h;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
