.class Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "TimelineSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver$1;->this$1:Lcom/google/glass/sync/TimelineSyncService$PowerLostBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/google/glass/sync/TimelineSyncService;->access$500()Lcom/google/glass/sync/TimelineSyncAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sync/TimelineSyncAdapter;->cancelOpportunisticUpload()V

    .line 445
    return-void
.end method
