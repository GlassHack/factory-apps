.class Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemUpdatePanoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/update/SystemUpdatePanoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$000(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v2}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$100(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 127
    :cond_0
    const-string v0, "SystemUpdatePanoActivity"

    const-string v1, "screen turned off during countdown; installing immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v0, 0x3112a

    const-string v1, "activity-countdown-screen-off-install"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdatePanoActivity$1;->this$0:Lcom/google/android/gsf/update/SystemUpdatePanoActivity;

    invoke-static {v0}, Lcom/google/android/gsf/update/SystemUpdatePanoActivity;->access$200(Lcom/google/android/gsf/update/SystemUpdatePanoActivity;)V

    .line 132
    :cond_1
    return-void
.end method
