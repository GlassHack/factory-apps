.class public Lcom/google/android/gms/checkin/EventLogService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p1}, Lcom/google/android/gms/checkin/EventLogService;->b(Landroid/content/Context;)V

    .line 58
    return-void
.end method
