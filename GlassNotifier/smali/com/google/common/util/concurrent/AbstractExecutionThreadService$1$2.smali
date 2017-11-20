.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->startUp()V

    .line 61
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStarted()V

    .line 64
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V

    .line 85
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyStopped()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v6

    .line 69
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->shutDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 79
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 86
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 87
    .restart local v6    # "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;->this$1:Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    :catch_2
    move-exception v5

    .line 74
    .local v5, "ignored":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.common.util.concurrent.AbstractExecutionThreadService$1$2"

    const-string v3, "run"

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
