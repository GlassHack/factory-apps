.class Lcom/android/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 373
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$900(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 378
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 355
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$600(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$700(Lcom/android/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 367
    :cond_0
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 384
    sget-object v0, Lcom/android/keyguard/KeyguardViewMediator$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 435
    :goto_0
    return-void

    .line 389
    :pswitch_0
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 400
    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 397
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 404
    :pswitch_1
    monitor-enter p0

    .line 405
    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 412
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 410
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 415
    :pswitch_2
    monitor-enter p0

    .line 416
    :try_start_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 425
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 423
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 428
    :pswitch_3
    monitor-enter p0

    .line 429
    :try_start_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 432
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserInfoChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 349
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$500()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 350
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$400(Lcom/android/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 344
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->access$500()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 345
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 339
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 326
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$002(Lcom/android/keyguard/KeyguardViewMediator;Z)Z

    .line 328
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator;->access$100(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$200(Lcom/android/keyguard/KeyguardViewMediator;)V

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$300(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 333
    monitor-exit v1

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
