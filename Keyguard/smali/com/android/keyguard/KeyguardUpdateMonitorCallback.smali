.class Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onBootCompleted()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 77
    return-void
.end method

.method onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 84
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 85
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_0
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 142
    return-void
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 0
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 149
    return-void
.end method

.method onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 71
    return-void
.end method

.method onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 42
    return-void
.end method

.method onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    return-void
.end method

.method onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 63
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    return-void
.end method

.method onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 119
    return-void
.end method

.method onTimeChanged()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 129
    return-void
.end method

.method onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 124
    return-void
.end method

.method onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 113
    return-void
.end method

.method onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 108
    return-void
.end method
