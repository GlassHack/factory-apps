.class public Lcom/google/glass/bluetooth/BluetoothApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "BluetoothApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 16
    new-instance v0, Lcom/google/glass/util/SystemIntentSender;

    invoke-direct {v0}, Lcom/google/glass/util/SystemIntentSender;-><init>()V

    invoke-static {v0}, Lcom/google/glass/util/IntentSender;->setInstance(Lcom/google/glass/util/IntentSender;)V

    .line 17
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 18
    return-void
.end method
