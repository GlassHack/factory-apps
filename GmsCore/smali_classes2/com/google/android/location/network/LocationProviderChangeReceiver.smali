.class public Lcom/google/android/location/network/LocationProviderChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 24
    if-nez p2, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-object v0, Lcom/google/android/location/d/g;->a:Lcom/google/android/location/d/g;

    invoke-static {v0, p1}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    iget-object v0, v0, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    if-ne v1, v0, :cond_0

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1}, Lcom/google/android/location/network/NetworkLocationService;->a(Landroid/content/Context;)Z

    goto :goto_0
.end method
