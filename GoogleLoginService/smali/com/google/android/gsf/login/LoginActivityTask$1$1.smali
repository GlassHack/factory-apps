.class Lcom/google/android/gsf/login/LoginActivityTask$1$1;
.super Ljava/lang/Object;
.source "LoginActivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivityTask$1;->runInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 182
    .local v0, "t0":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/LoginActivityTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v3, v3, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1000(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/login/MarketHelper;->allowCreditCard(Lcom/google/android/gsf/loginservice/GLSSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/LoginActivityTask;->getMarket()Lcom/google/android/gsf/login/MarketHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v3, v3, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v3}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1100(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/login/MarketHelper;->setOffersValues(Lcom/google/android/gsf/loginservice/GLSSession;)V

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 186
    .local v1, "t1":Ljava/lang/Long;
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 188
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 189
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddCond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 193
    return-void

    .line 191
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v3, v3, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v3, v3, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
