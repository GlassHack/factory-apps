.class Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;
.super Ljava/lang/Object;
.source "AndroidEndpoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendUserStatus(Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field final synthetic val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 806
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->this$0:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 810
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 811
    .local v1, "t0":J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->this$0:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->access$000(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)Ljava/util/concurrent/Semaphore;

    move-result-object v3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 812
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 813
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Done waiting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 821
    .end local v1    # "t0":J
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v3}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$2;->val$asyncResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v3
.end method
