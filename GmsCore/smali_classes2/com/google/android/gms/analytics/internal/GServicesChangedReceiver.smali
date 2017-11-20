.class public Lcom/google/android/gms/analytics/internal/GServicesChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 21
    const-string v0, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/RefreshEnabledStateService;->b(Landroid/content/Context;)V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/PlayLogMonitorIntervalService;->b(Landroid/content/Context;)V

    .line 29
    :cond_0
    return-void
.end method
