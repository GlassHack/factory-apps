.class Lcom/android/keyguard/KeyguardFaceUnlockView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 304
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/keyguard/KeyguardFaceUnlockView;)Z

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2, p1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$402(Lcom/android/keyguard/KeyguardFaceUnlockView;Z)Z

    .line 287
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 290
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 291
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 287
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 293
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    .line 255
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 260
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 270
    :cond_0
    return-void
.end method
