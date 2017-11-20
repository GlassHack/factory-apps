.class Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;
.super Landroid/os/AsyncTask;
.source "TimelineSyncStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncStatusReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iput-object p2, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$100(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    const-string v1, "item_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$202(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$300(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
