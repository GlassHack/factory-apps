.class public Lcom/google/android/gms/checkin/CheckinService$SecretCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    const/4 v0, 0x0

    invoke-static {p1, v1, v0, v1, v1}, Lcom/google/android/gms/checkin/CheckinService;->a(Landroid/content/Context;ZZZZ)V

    .line 201
    return-void
.end method
