.class public Lcom/google/android/clockwork/logging/WearableAppLoggerGservicesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearableAppLoggerGservicesReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const-string v0, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/google/android/clockwork/logging/WearableAppLogger;->getInstance()Lcom/google/android/clockwork/logging/WearableAppLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/clockwork/logging/WearableAppLogger;->onReceive()V

    .line 18
    :cond_0
    return-void
.end method
