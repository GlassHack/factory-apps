.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    }
.end annotation


# instance fields
.field private mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

.field private mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

.field private mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

.field private mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

.field private mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasMobileData:Z

.field private mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

.field private mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

.field private mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

.field private mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

.field private mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

.field private mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

.field private mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    .line 244
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 248
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 252
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 256
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 260
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 264
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 268
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 272
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 276
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 279
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 280
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 284
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    .line 288
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    .line 292
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 296
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 300
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 305
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    .line 306
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 319
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    .line 320
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->startObserving()V

    .line 321
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    .line 322
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->startObserving()V

    .line 323
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->startObserving()V

    .line 326
    const-string v2, "media_router"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rebindMediaRouterAsCurrentUser()V

    .line 329
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    .line 331
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 333
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v0, "alarmIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->rebindMediaRouterAsCurrentUser()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setAirplaneModeState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayRouteCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/media/MediaRouter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method private static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 777
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-object v5

    .line 778
    :cond_1
    const-string v6, "default_input_method"

    invoke-static {p1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "currentInputMethodId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 781
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 782
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 783
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 784
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 788
    .local v4, "summary":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 784
    .end local v4    # "summary":Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0a00a7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 14
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 722
    .local v5, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 723
    .local v0, "N":I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    const/4 v12, 0x1

    .line 761
    :goto_0
    return v12

    .line 724
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 725
    :cond_1
    const/4 v7, 0x0

    .line 726
    .local v7, "nonAuxCount":I
    const/4 v1, 0x0

    .line 727
    .local v1, "auxCount":I
    const/4 v8, 0x0

    .line 728
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 729
    .local v2, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 730
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 731
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v12, 0x1

    invoke-virtual {p1, v4, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 733
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 734
    .local v10, "subtypeCount":I
    if-nez v10, :cond_3

    .line 735
    add-int/lit8 v7, v7, 0x1

    .line 729
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 737
    :cond_3
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 738
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 739
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 740
    add-int/lit8 v7, v7, 0x1

    .line 741
    move-object v8, v9

    .line 737
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 743
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 744
    move-object v2, v9

    goto :goto_3

    .line 749
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "j":I
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 750
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 751
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 752
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 757
    const/4 v12, 0x0

    goto :goto_0

    .line 759
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 761
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private rebindMediaRouterAsCurrentUser()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    .line 682
    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 455
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 460
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 456
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 457
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 458
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 464
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 469
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 465
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 466
    .restart local v0    # "length":I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private setAirplaneModeState(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    return-void

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateRemoteDisplays()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x4

    .line 685
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v5}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 687
    .local v0, "connectedRoute":Landroid/media/MediaRouter$RouteInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 690
    .local v2, "enabled":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 691
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    .line 699
    .local v1, "connecting":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 700
    if-eqz v0, :cond_3

    .line 701
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 702
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_2

    const v3, 0x7f02002d

    :goto_2
    iput v3, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 709
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 710
    return-void

    .line 687
    .end local v1    # "connecting":Z
    .end local v2    # "enabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 693
    .restart local v2    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .line 694
    const/4 v1, 0x0

    .line 695
    .restart local v1    # "connecting":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v2

    goto :goto_1

    .line 702
    :cond_2
    const v3, 0x7f02002c

    goto :goto_2

    .line 705
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v5, 0x7f0a00b4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 707
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v4, 0x7f02002b

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_3
.end method


# virtual methods
.method addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 407
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 418
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "airplaneMode":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAirplaneModeChanged(Z)V

    .line 421
    return-void
.end method

.method addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 384
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 386
    return-void
.end method

.method addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 599
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 601
    return-void
.end method

.method addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 552
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 554
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 555
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 558
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 559
    return-void

    .line 556
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 828
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 829
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 830
    return-void
.end method

.method addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 642
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 643
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 644
    return-void
.end method

.method addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 616
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 618
    return-void
.end method

.method addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 508
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 510
    return-void
.end method

.method addRemoteDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 661
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 662
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 663
    .local v0, "count":[I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRemoteDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V

    .line 677
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V

    .line 678
    return-void
.end method

.method addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "rotationLockController"    # Lcom/android/systemui/statusbar/policy/RotationLockController;
    .param p3, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 799
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 800
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 802
    return-void
.end method

.method addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 353
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 355
    return-void
.end method

.method public addSslCaCertWarningTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 853
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 855
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setSslCaCertWarningTileInfo(ZZ)V

    .line 856
    return-void
.end method

.method addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 365
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 367
    return-void
.end method

.method addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "cb"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 450
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 452
    return-void
.end method

.method deviceHasMobileData()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    return v0
.end method

.method deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 439
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_0

    const v1, 0x7f020023

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 445
    return-void

    .line 440
    :cond_0
    const v1, 0x7f020022

    goto :goto_0
.end method

.method onAlarmChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 390
    return-void
.end method

.method public onBatteryLevelChanged(IZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 608
    return-void
.end method

.method public onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V
    .locals 4
    .param p1, "bluetoothStateIn"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 572
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020028

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->iconId:I

    .line 577
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->label:Ljava/lang/String;

    .line 588
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 589
    return-void

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020026

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->iconId:I

    .line 580
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_0

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020027

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->iconId:I

    .line 585
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->label:Ljava/lang/String;

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 568
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 833
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 834
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v6}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 838
    .local v0, "mode":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    .line 840
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    if-eqz v2, :cond_1

    const v2, 0x7f02002a

    :goto_1
    iput v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->iconId:I

    .line 843
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    const v3, 0x7f0a00a4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->label:Ljava/lang/String;

    .line 844
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 845
    return-void

    :cond_0
    move v2, v3

    .line 838
    goto :goto_0

    .line 840
    :cond_1
    const v2, 0x7f020029

    goto :goto_1
.end method

.method public onBugreportChanged()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 647
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 648
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 650
    .local v1, "enabled":Z
    :try_start_0
    const-string v4, "bugreport_in_power_menu"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 654
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v5}, Lcom/android/systemui/settings/CurrentUserTracker;->isCurrentUserOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 655
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 656
    return-void

    :cond_0
    move v1, v3

    .line 650
    goto :goto_0

    :cond_1
    move v2, v3

    .line 654
    goto :goto_1

    .line 651
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method onImeWindowStatusChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 764
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 766
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 768
    .local v0, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 769
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v3, v4, v1, v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 771
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 774
    :cond_0
    return-void

    .line 768
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLocationSettingsChanged(Z)V
    .locals 6
    .param p1, "locationEnabled"    # Z

    .prologue
    .line 628
    if-eqz p1, :cond_0

    const v2, 0x7f0a00a8

    .line 630
    .local v2, "textResId":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "label":Ljava/lang/String;
    if-eqz p1, :cond_1

    const v1, 0x7f020035

    .line 633
    .local v1, "locationIconId":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 634
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 635
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput v1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 636
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 637
    return-void

    .line 628
    .end local v0    # "label":Ljava/lang/String;
    .end local v1    # "locationIconId":I
    .end local v2    # "textResId":I
    :cond_0
    const v2, 0x7f0a00a9

    goto :goto_0

    .line 631
    .restart local v0    # "label":Ljava/lang/String;
    .restart local v2    # "textResId":I
    :cond_1
    const v1, 0x7f020034

    goto :goto_1
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "signalContentDescription"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataContentDescription"    # Ljava/lang/String;
    .param p8, "enabledDesc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    :goto_0
    iput v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalIconId:I

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .end local p3    # "signalContentDescription":Ljava/lang/String;
    :goto_1
    iput-object p3, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalContentDescription:Ljava/lang/String;

    .line 526
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->enabled:Z

    if-nez v1, :cond_3

    move v1, p4

    :goto_2
    iput v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataTypeIconId:I

    .line 529
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_4

    if-eqz p5, :cond_4

    move v1, v3

    :goto_3
    iput-boolean v1, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->activityIn:Z

    .line 530
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_5

    if-eqz p6, :cond_5

    :goto_4
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->activityOut:Z

    .line 531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_6

    if-lez p4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->enabled:Z

    if-nez v2, :cond_6

    .end local p7    # "dataContentDescription":Ljava/lang/String;
    :goto_5
    iput-object p7, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataContentDescription:Ljava/lang/String;

    .line 534
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_7

    invoke-static {p8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->label:Ljava/lang/String;

    .line 537
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 539
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 520
    .restart local v0    # "r":Landroid/content/res/Resources;
    .restart local p3    # "signalContentDescription":Ljava/lang/String;
    .restart local p7    # "dataContentDescription":Ljava/lang/String;
    :cond_1
    const v1, 0x7f020054

    goto :goto_0

    .line 523
    :cond_2
    const v4, 0x7f0a005b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .end local p3    # "signalContentDescription":Ljava/lang/String;
    :cond_3
    move v1, v2

    .line 526
    goto :goto_2

    :cond_4
    move v1, v2

    .line 529
    goto :goto_3

    :cond_5
    move v3, v2

    .line 530
    goto :goto_4

    .line 531
    :cond_6
    const v2, 0x7f0a004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p7

    goto :goto_5

    .line 534
    .end local p7    # "dataContentDescription":Ljava/lang/String;
    :cond_7
    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method onNextAlarmChanged()V
    .locals 4

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "alarmText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 399
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 401
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 402
    return-void

    .line 399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRotationLockChanged()V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLockAffordanceVisible()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockStateChanged(ZZ)V

    .line 806
    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 3
    .param p1, "rotationLocked"    # Z
    .param p2, "affordanceVisible"    # Z

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->visible:Z

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->enabled:Z

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    if-eqz p1, :cond_0

    const v0, 0x7f020036

    :goto_0
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->iconId:I

    .line 814
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;->label:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RotationLockState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 818
    return-void

    .line 811
    :cond_0
    const v0, 0x7f020025

    goto :goto_0

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onWifiSignalChanged(ZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "wifiSignalIconId"    # I
    .param p3, "activityIn"    # Z
    .param p4, "activityOut"    # Z
    .param p5, "wifiSignalContentDescription"    # Ljava/lang/String;
    .param p6, "enabledDesc"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 477
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p6, :cond_0

    move v1, v3

    .line 480
    .local v1, "wifiConnected":Z
    :goto_0
    if-lez p2, :cond_1

    if-nez p6, :cond_1

    move v2, v3

    .line 481
    .local v2, "wifiNotConnected":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean p1, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->enabled:Z

    .line 482
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean v1, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    .line 483
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    move v5, v3

    :goto_2
    iput-boolean v5, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->activityIn:Z

    .line 484
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    :goto_3
    iput-boolean v3, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->activityOut:Z

    .line 485
    if-eqz v1, :cond_4

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput p2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->iconId:I

    .line 487
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-static {p6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->label:Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-object p5, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    .line 498
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 499
    return-void

    .end local v1    # "wifiConnected":Z
    .end local v2    # "wifiNotConnected":Z
    :cond_0
    move v1, v4

    .line 479
    goto :goto_0

    .restart local v1    # "wifiConnected":Z
    :cond_1
    move v2, v4

    .line 480
    goto :goto_1

    .restart local v2    # "wifiNotConnected":Z
    :cond_2
    move v5, v4

    .line 483
    goto :goto_2

    :cond_3
    move v3, v4

    .line 484
    goto :goto_3

    .line 489
    :cond_4
    if-eqz v2, :cond_5

    .line 490
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f020058

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->iconId:I

    .line 491
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->label:Ljava/lang/String;

    .line 492
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0051

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_4

    .line 494
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f020063

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->iconId:I

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00b3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->label:Ljava/lang/String;

    .line 496
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0050

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_4
.end method

.method refreshBatteryTile()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 611
    return-void
.end method

.method refreshBluetoothTile()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Z)V

    .line 594
    :cond_0
    return-void
.end method

.method refreshBrightnessTile()V
    .locals 0

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 848
    return-void
.end method

.method refreshLocationTile()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onLocationSettingsChanged(Z)V

    .line 624
    :cond_0
    return-void
.end method

.method refreshRotationLockTile()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 823
    :cond_0
    return-void
.end method

.method refreshRssiTile()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->reinflateContent(Landroid/view/LayoutInflater;)V

    .line 547
    :cond_0
    return-void
.end method

.method refreshSettingsTile()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 358
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 360
    return-void
.end method

.method public setSslCaCertWarningTileInfo(ZZ)V
    .locals 4
    .param p1, "hasCert"    # Z
    .param p2, "isManaged"    # Z

    .prologue
    .line 858
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 859
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 860
    if-eqz p2, :cond_0

    .line 861
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f020031

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 865
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 866
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 867
    return-void

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSslCaCertWarningState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x1080078

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_0
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "avatar"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;->label:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;->avatar:Landroid/graphics/drawable/Drawable;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 372
    return-void
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 342
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBatteryTile()V

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBluetoothTile()V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBrightnessTile()V

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRssiTile()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshLocationTile()V

    .line 348
    return-void
.end method
