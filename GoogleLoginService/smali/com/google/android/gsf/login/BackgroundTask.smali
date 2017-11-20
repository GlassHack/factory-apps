.class public abstract Lcom/google/android/gsf/login/BackgroundTask;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "BackgroundTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BackgroundTask$2;
    }
.end annotation


# instance fields
.field mCancelButton:Landroid/widget/Button;

.field mCancelable:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mStartTime:J

.field protected mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

.field private mVerboseMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    .line 79
    new-instance v0, Lcom/google/android/gsf/login/BackgroundTask$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/BackgroundTask$1;-><init>(Lcom/google/android/gsf/login/BackgroundTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/BackgroundTask;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/login/BackgroundTask;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onReply(Landroid/os/Message;)V

    return-void
.end method

.method private onReply(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->cancelTaskThread()V

    .line 193
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/StatusHelper;->fromMessage(Landroid/os/Message;)Lcom/google/android/gms/auth/firstparty/shared/Status;

    move-result-object v2

    .line 195
    .local v2, "status":Lcom/google/android/gms/auth/firstparty/shared/Status;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 197
    .local v1, "res":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReply() - status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    sget-object v3, Lcom/google/android/gsf/login/BackgroundTask$2;->$SwitchMap$com$google$android$gms$auth$firstparty$shared$Status:[I

    invoke-virtual {v2}, Lcom/google/android/gms/auth/firstparty/shared/Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 210
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gsf/login/BackgroundTask;->onError(Lcom/google/android/gms/auth/firstparty/shared/Status;Landroid/content/Intent;)V

    .line 212
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    goto :goto_0

    .line 205
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/google/android/gsf/login/CaptchaActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    const/16 v3, 0x3e9

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gsf/login/BackgroundTask;->startSessionActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected cancelTaskThread()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/CancelableCallbackThread;->cancel()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mTaskThread:Lcom/google/android/gsf/login/CancelableCallbackThread;

    .line 160
    :cond_0
    return-void
.end method

.method protected ensureDelay(J)V
    .locals 7
    .param p1, "minTime"    # J

    .prologue
    .line 117
    iget-wide v5, p0, Lcom/google/android/gsf/login/BackgroundTask;->mStartTime:J

    add-long v1, v5, p1

    .line 118
    .local v1, "endTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 121
    .local v3, "t1":J
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-lez v5, :cond_0

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 123
    sub-long v5, v1, v3

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    .line 133
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(I)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 153
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_5

    .line 136
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 137
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha answered, retry withthread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    const v0, 0x320ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "with action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    goto :goto_0

    .line 147
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_4

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Captcha failed with resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    goto :goto_0

    .line 151
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(I)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 177
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelable:Z

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onCancel()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mStartTime:J

    .line 98
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->setContentView(I)V

    .line 99
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/BackgroundTask;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    .line 102
    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 105
    :cond_0
    return-void
.end method

.method protected onError(Lcom/google/android/gms/auth/firstparty/shared/Status;Landroid/content/Intent;)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/auth/firstparty/shared/Status;
    .param p2, "res"    # Landroid/content/Intent;

    .prologue
    .line 215
    if-nez p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->createErrorIntent(Lcom/google/android/gms/auth/firstparty/shared/Status;)Landroid/content/Intent;

    move-result-object p2

    .line 218
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/BackgroundTask;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gsf/login/BackgroundTask;->finish()V

    .line 220
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onPause()V

    .line 110
    iget-boolean v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GLSActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause(), class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method protected setMessage(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask;->mVerboseMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method
