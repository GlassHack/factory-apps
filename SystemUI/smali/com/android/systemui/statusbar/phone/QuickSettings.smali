.class Lcom/android/systemui/statusbar/phone/QuickSettings;
.super Ljava/lang/Object;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDynamicSpannedTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

.field private final mProfileReceiver:Landroid/content/BroadcastReceiver;

.field private mQueryCertTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mTilesSetUp:Z

.field mUseDefaultAvatar:Z

.field private mUserInfoTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    .line 854
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$31;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$31;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 880
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$32;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v3, "profileFilter":Landroid/content/IntentFilter;
    const-string v0, "android.provider.Contacts.PROFILE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mProfileReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBugreportDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->showBrightnessDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 12
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const v11, 0x7f040009

    const/4 v10, 0x0

    .line 381
    invoke-virtual {p2, v11, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 383
    .local v6, "wifiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v7, 0x7f040012

    invoke-virtual {v6, v7, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 384
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$7;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$8;

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettings$8;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 414
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$9;

    invoke-direct {v8, p0, v6}, Lcom/android/systemui/statusbar/phone/QuickSettings$9;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 429
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    invoke-virtual {p2, v11, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 435
    .local v5, "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v7, 0x7f040010

    invoke-virtual {v5, v7, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 436
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$10;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$11;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$11;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v7, v5, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 471
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    .end local v5    # "rssiTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 508
    :goto_0
    invoke-virtual {p2, v11, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 510
    .local v1, "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v7, 0x7f04000c

    invoke-virtual {v1, v7, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 511
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$14;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$14;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$15;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings$15;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    invoke-virtual {v7, v1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 537
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 540
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$16;

    invoke-direct {v8, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$16;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 555
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 558
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceSupportsBluetooth()Z

    move-result v7

    if-nez v7, :cond_2

    .line 611
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 613
    .local v3, "locationTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v7, 0x7f020035

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 614
    const v7, 0x7f0a00a8

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 615
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$20;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$20;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$21;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$21;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 636
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$22;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettings$22;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v7, v3, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 649
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 650
    return-void

    .line 477
    .end local v0    # "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .end local v1    # "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .end local v3    # "locationTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    :cond_1
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 479
    .local v4, "rotationLockTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$12;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v9, Lcom/android/systemui/statusbar/phone/QuickSettings$13;

    invoke-direct {v9, p0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettings$13;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 504
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 560
    .end local v4    # "rotationLockTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .restart local v0    # "airplaneTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .restart local v1    # "batteryTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 562
    .local v2, "bluetoothTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$17;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$17;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    new-instance v7, Lcom/android/systemui/statusbar/phone/QuickSettings$18;

    invoke-direct {v7, p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings$18;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 581
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v8, Lcom/android/systemui/statusbar/phone/QuickSettings$19;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings$19;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v7, v2, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v7, 0x1

    .line 654
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 656
    .local v0, "alarmTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v4, 0x7f020024

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 657
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$23;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$23;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$24;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$24;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 675
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 677
    .local v2, "remoteDisplayTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$25;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$25;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v5, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addRemoteDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 700
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 725
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 727
    .local v1, "bugreportTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v4, 0x1080590

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 728
    const v4, 0x10400d0

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 729
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$27;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$27;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettings$28;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$28;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v4, v1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 742
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 761
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const v6, 0x7f04000f

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 763
    .local v3, "sslCaCertWarningTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$29;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$29;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    const v4, 0x10803b1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 773
    const v4, 0x7f0a00b8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setTextResource(I)V

    .line 775
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v5, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;->setShowWhenEnabled(Z)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addSslCaCertWarningTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 778
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 779
    return-void
.end method

.method private addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 303
    const v3, 0x7f040009

    const/4 v4, 0x0

    invoke-virtual {p2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 305
    .local v2, "userTile":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    const v3, 0x7f040011

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContent(ILandroid/view/LayoutInflater;)V

    .line 306
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettings$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 345
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 351
    .local v0, "brightnessTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020029

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 352
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v0, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 362
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    .line 366
    .local v1, "settingsTile":Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    const v3, 0x7f020037

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 367
    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    new-instance v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V

    .line 375
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 376
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method private applyBluetoothStatus()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 837
    return-void
.end method

.method private applyLocationEnabledStatus()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onLocationSettingsChanged(Z)V

    .line 841
    return-void
.end method

.method private collapsePanels()V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 288
    return-void
.end method

.method private queryForSslCaCerts()V
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettings$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mQueryCertTask:Landroid/os/AsyncTask;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mQueryCertTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method private queryForUserInformation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "currentUserContext":Landroid/content/Context;
    const/4 v4, 0x0

    .line 204
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 205
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    const-string v7, "android"

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 213
    :goto_0
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 214
    .local v3, "userId":I
    iget-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 216
    .local v5, "userName":Ljava/lang/String;
    move-object v0, v1

    .line 217
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Lcom/android/systemui/statusbar/phone/QuickSettings$2;

    invoke-direct {v6, p0, v5, v3, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;ILandroid/content/Context;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 261
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    new-array v7, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    return-void

    .line 207
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "userId":I
    .end local v5    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 208
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t create user context"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 210
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 211
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "QuickSettings"

    const-string v7, "Couldn\'t get user info"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setupQuickSettings()V
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 268
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->addTemporaryTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    .line 275
    return-void
.end method

.method private showBrightnessDialog()V
    .locals 2

    .prologue
    .line 798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 800
    return-void
.end method

.method private showBugreportDialog()V
    .locals 4

    .prologue
    .line 803
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x104040e

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettings$30;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettings$30;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    const v2, 0x10400d1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 824
    const v2, 0x10400d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 825
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 826
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 827
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 829
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 833
    return-void

    .line 830
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startSettingsActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;Z)V

    .line 284
    return-void
.end method

.method private startSettingsActivity(Landroid/content/Intent;Z)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 291
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 294
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->collapsePanels()V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startSettingsActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->startSettingsActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method


# virtual methods
.method public getService()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method reloadUserInfo()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 846
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;

    .line 848
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mTilesSetUp:Z

    if-eqz v0, :cond_1

    .line 849
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V

    .line 850
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForSslCaCerts()V

    .line 852
    :cond_1
    return-void
.end method

.method setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 148
    return-void
.end method

.method public setImeWindowStatus(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onImeWindowStatusChanged(Z)V

    .line 160
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mStatusBarService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 152
    return-void
.end method

.method setup(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/BluetoothController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 1
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p2, "bluetoothController"    # Lcom/android/systemui/statusbar/policy/BluetoothController;
    .param p3, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p4, "locationController"    # Lcom/android/systemui/statusbar/policy/LocationController;
    .param p5, "rotationLockController"    # Lcom/android/systemui/statusbar/policy/RotationLockController;

    .prologue
    .line 165
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 166
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 167
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->setupQuickSettings()V

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->updateResources()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->applyLocationEnabledStatus()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addStateChangedCallback(Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p4, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->addSettingsChangedCallback(Lcom/android/systemui/statusbar/policy/LocationController$LocationSettingsChangeCallback;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V

    .line 178
    return-void
.end method

.method updateResources()V
    .locals 5

    .prologue
    .line 782
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 785
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateResources()V

    .line 788
    const v4, 0x7f0b000a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 789
    .local v2, "span":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mDynamicSpannedTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 790
    .local v3, "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setColumnSpan(I)V

    goto :goto_0

    .line 792
    .end local v3    # "v":Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsContainerView;->updateResources()V

    .line 793
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 794
    return-void
.end method
