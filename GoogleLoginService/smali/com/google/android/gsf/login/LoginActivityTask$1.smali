.class Lcom/google/android/gsf/login/LoginActivityTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "LoginActivityTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivityTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LoginActivityTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Message;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "res":Landroid/content/Intent;
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->getUserData()Ljava/util/HashMap;

    move-result-object v8

    sget-object v9, Lcom/google/android/gsf/loginservice/RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v9}, Lcom/google/android/gsf/loginservice/RequestKey;->getWire()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 132
    .local v4, "password":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->access$000(Lcom/google/android/gsf/login/LoginActivityTask;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 133
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8, v9, v4}, Lcom/google/android/gsf/login/LoginActivityTask;->confirmCredentials(Landroid/os/Message;Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->access$100(Lcom/google/android/gsf/login/LoginActivityTask;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-static {v8, v9, v4}, Lcom/google/android/gsf/login/LoginActivityTask;->access$200(Lcom/google/android/gsf/login/LoginActivityTask;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->access$300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 142
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->access$600(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v9}, Lcom/google/android/gsf/login/LoginActivityTask;->access$400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v10}, Lcom/google/android/gsf/login/LoginActivityTask;->access$500(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mAccessToken:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v11}, Lcom/google/android/gsf/login/LoginActivityTask;->isSetupWizard()Z

    move-result v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingAddWithRequestToken(Lcom/google/android/gsf/loginservice/GLSSession;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 166
    :goto_1
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-boolean v12, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelable:Z

    .line 167
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iput-boolean v12, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mAllowBackHardKey:Z

    .line 170
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->mCallbackMessage:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "intent"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    const-string v8, "authtoken"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-static {v5}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/auth/firstparty/shared/Status;->SUCCESS:Lcom/google/android/gms/auth/firstparty/shared/Status;

    if-ne v8, v9, :cond_8

    .line 177
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/google/android/gsf/login/LoginActivityTask$1$1;

    invoke-direct {v9, p0}, Lcom/google/android/gsf/login/LoginActivityTask$1$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 195
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v8, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 197
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/32 v10, 0x1d4c0

    add-long v1, v8, v10

    .line 199
    .local v1, "end":J
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v1, v8

    .line 200
    .local v6, "waitTime":J
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v8, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v8, v13

    if-gez v8, :cond_7

    cmp-long v8, v6, v13

    if-lez v8, :cond_7

    .line 201
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v8, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddCond:Ljava/util/concurrent/locks/Condition;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v6, v7, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 206
    .end local v1    # "end":J
    .end local v6    # "waitTime":J
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v8, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    const-string v8, "GLSActivity"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 212
    const-string v8, "GLSActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Market check "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v10, v10, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n  showOffer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v10}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1200(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v10

    iget-boolean v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n  offerIntent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v10}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1300(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n  offerMessageHtml "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v10}, Lcom/google/android/gsf/login/LoginActivityTask;->access$1400(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_4
    sget-object v8, Lcom/google/android/gsf/loginservice/StatusHelper;->SUCCESS:Lcom/google/android/gsf/loginservice/StatusHelper;

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 226
    :goto_4
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_0

    .line 227
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gsf/login/LoginActivityTask;->ensureDelay(J)V

    goto/16 :goto_0

    .line 146
    :cond_5
    if-eqz v4, :cond_6

    .line 147
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v8}, Lcom/google/android/gsf/login/LoginActivityTask;->access$900(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v9}, Lcom/google/android/gsf/login/LoginActivityTask;->access$700(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-static {v10}, Lcom/google/android/gsf/login/LoginActivityTask;->access$800(Lcom/google/android/gsf/login/LoginActivityTask;)Lcom/google/android/gsf/loginservice/GLSSession;

    move-result-object v10

    invoke-virtual {v8, v9, v4, v10}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingAddWithPassword(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/loginservice/GLSSession;)Landroid/content/Intent;

    move-result-object v5

    goto/16 :goto_1

    .line 153
    :cond_6
    sget-object v8, Lcom/google/android/gsf/loginservice/StatusHelper;->BAD_AUTHENTICATION:Lcom/google/android/gsf/loginservice/StatusHelper;

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 209
    .restart local v1    # "end":J
    .restart local v6    # "waitTime":J
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v8, v8, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_3

    .end local v1    # "end":J
    .end local v6    # "waitTime":J
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v9, v9, Lcom/google/android/gsf/login/LoginActivityTask;->mPostAddLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8

    .line 220
    :cond_8
    invoke-static {v5}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v3

    .line 221
    .local v3, "err":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-static {v3}, Lcom/google/android/gsf/loginservice/StatusHelper;->get(Lcom/google/android/gms/auth/firstparty/shared/Status;)Lcom/google/android/gsf/loginservice/StatusHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8, v9}, Lcom/google/android/gsf/loginservice/StatusHelper;->toMessage(Landroid/os/Message;)V

    .line 223
    iget-object v8, p0, Lcom/google/android/gsf/login/LoginActivityTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "intent"

    invoke-virtual {v8, v9, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4
.end method
