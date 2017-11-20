.class Lcom/google/glass/bluetooth/handsfree/HandsFree;
.super Ljava/lang/Object;
.source "HandsFree.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/handsfree/HandsFree$6;,
        Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;,
        Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CALL_ACTION_RECEIVER_ACTIONS:[Ljava/lang/String;

.field private static final PAIRING_CONNECT_DELAY_MS:J = 0xc8L

.field private static final PREF_FILE_NAME:Ljava/lang/String; = "HandsFree"

.field private static final PREF_PHONE_NETWORK_COUNTRY:Ljava/lang/String; = "phoneNetworkCountry"

.field private static final PREF_PHONE_SIM_COUNTRY:Ljava/lang/String; = "phoneSimCountry"

.field private static final bluetoothReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final callActionReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static startCount:I


# instance fields
.field private final bluetoothReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;

.field private final callActionReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

.field private callSetupState:I

.field private callState:I

.field private callerId:Ljava/lang/String;

.field private closed:Z

.field private companionListener:Lcom/google/glass/companion/CompanionStateChangeListener;

.field private final connectHandler:Landroid/os/Handler;

.field private final connectHandsFree:Ljava/lang/Runnable;

.field private connected:Z

.field private final context:Landroid/content/Context;

.field private final device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

.field private final handler:Landroid/os/Handler;

.field private final handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

.field private lastKnownNetworkCountryIso:Ljava/lang/String;

.field private lastKnownSimCountryIso:Ljava/lang/String;

.field private messenger:Landroid/os/Messenger;

.field private phoneNumber:Ljava/lang/String;

.field private final preferences:Landroid/content/SharedPreferences;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

.field private final scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

.field private serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private final volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "bluetoothReceiver"

    .line 48
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->bluetoothReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "callActionReceiver"

    .line 51
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callActionReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.CALL_DIAL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.action.CALL_REDIAL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.glass.action.ACCEPT_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.google.glass.action.REJECT_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.glass.action.BLUETOOTH_VOICE_RECOGNITION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.google.glass.action.BLUETOOTH_VOLUME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->CALL_ACTION_RECEIVER_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Landroid/content/Context;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 7
    .param p1, "handsFreeProfile"    # Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;
    .param p2, "device"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "phoneCallManager"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    .line 89
    iput-boolean v6, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->closed:Z

    .line 95
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;Lcom/google/glass/bluetooth/handsfree/HandsFree$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->bluetoothReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;

    .line 98
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    invoke-direct {v1, p0, v5}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;Lcom/google/glass/bluetooth/handsfree/HandsFree$1;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callActionReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    .line 101
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/companion/RemoteCompanionProxy;

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 110
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$1;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandsFree:Ljava/lang/Runnable;

    .line 125
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$2;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$2;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->companionListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    .line 144
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;

    invoke-direct {v2, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$3;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->messenger:Landroid/os/Messenger;

    .line 188
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Constructor device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    .line 190
    iput-object p2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 191
    iput-object p3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    .line 192
    new-instance v2, Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    const-string v1, "audio"

    .line 193
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-direct {v2, v1}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;-><init>(Landroid/media/AudioManager;)V

    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    .line 194
    iput-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callerId:Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandler:Landroid/os/Handler;

    .line 201
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandsFree:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    new-instance v1, Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-direct {v1, p3, p4}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;-><init>(Landroid/content/Context;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    .line 205
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->listen()V

    .line 208
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->bluetoothReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;

    invoke-virtual {v1, p3}, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 210
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 213
    const-string v1, "HandsFree"

    invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->preferences:Landroid/content/SharedPreferences;

    .line 214
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "phoneNetworkCountry"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownNetworkCountryIso:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "phoneSimCountry"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownSimCountryIso:Ljava/lang/String;

    .line 216
    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Read last known country codes from shared pref [network: %s, sim: %s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownNetworkCountryIso:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownSimCountryIso:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    iget-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->companionListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 222
    sget v1, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startCount:I

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handleConnectError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ScoConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->bluetoothReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->CALL_ACTION_RECEIVER_ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->phoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/handsfree/VolumeControl;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callActionReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connected:Z

    return v0
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->messenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownNetworkCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownNetworkCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownSimCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/glass/bluetooth/handsfree/HandsFree;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->lastKnownSimCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/glass/bluetooth/handsfree/HandsFree;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/bluetooth/handsfree/HandsFree;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private handleConnectError(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 264
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Couldn\'t connect headset to %s; device may not be in range. Error: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 264
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$5;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$5;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method private setCallerId(Ljava/lang/String;)V
    .locals 5
    .param p1, "callerId"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v1, 0x3

    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Caller ID: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callerId:Ljava/lang/String;

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Caller id was not empty, sending sticky broadcast."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallerIdChanged(Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void

    .line 348
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->closed:Z

    .line 306
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 309
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callActionReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->bluetoothReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$BluetoothBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 311
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->companionListener:Lcom/google/glass/companion/CompanionStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/RemoteCompanionProxy;->removeListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    sget-object v1, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 315
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->terminate()V

    .line 317
    iput-object v2, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandsFree:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;

    invoke-direct {v1, p0}, Lcom/google/glass/bluetooth/handsfree/HandsFree$4;-><init>(Lcom/google/glass/bluetooth/handsfree/HandsFree;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    const-string v0, "RfcommThread startCount: %d\n"

    new-array v3, v1, [Ljava/lang/Object;

    sget v4, Lcom/google/glass/bluetooth/handsfree/HandsFree;->startCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 330
    const-string v3, "ServiceConnection exists: %b\n"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 331
    const-string v0, "ServiceConnection isAlive: %b\n"

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    .line 332
    invoke-virtual {v4}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->getShouldRun()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {p1, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 333
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->dump(Ljava/io/PrintWriter;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->scoConnection:Lcom/google/glass/bluetooth/handsfree/ScoConnection;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/ScoConnection;->dump(Ljava/io/PrintWriter;)V

    .line 339
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 330
    goto :goto_0

    :cond_3
    move v1, v2

    .line 332
    goto :goto_1
.end method

.method public onCallSetupStateChanged(I)V
    .locals 6
    .param p1, "callSetupState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallSetupStateChange: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callSetupState:I

    if-ne v0, p1, :cond_1

    .line 379
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already in call setup state %d, ignoring the change."

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callSetupState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callSetupState:I

    .line 385
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    if-ne v0, v5, :cond_2

    if-eqz p1, :cond_2

    .line 387
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "We are already in a call and receiving another call setup, dropping it on the floor as we do not support multiple calls or three way calling."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 392
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    if-nez v0, :cond_3

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallSetupStateChanged(I)V

    .line 399
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 400
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Outgoing call detected, checking for caller id state."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No caller id, chances are the call was started from the phone, not Glass. Requesting caller id from phone."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->listCurrentCalls()V

    goto :goto_0

    .line 406
    :cond_4
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Caller id is present, rebroadcasting current id."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallerIdChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCallStateChanged(I)V
    .locals 6
    .param p1, "callState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallStateChanged: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    if-ne v0, p1, :cond_0

    .line 361
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Already in call state %d, ignoring the change."

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :goto_0
    return-void

    .line 365
    :cond_0
    iput p1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    .line 368
    if-nez p1, :cond_1

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallStateChanged(I)V

    goto :goto_0
.end method

.method public onCallerIdChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "callerId"    # Ljava/lang/String;

    .prologue
    .line 420
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCallerIdChanged: REDACTED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public onConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 432
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connected:Z

    .line 435
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->reportSpeakerGain(I)V

    .line 436
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    invoke-virtual {v1}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->getMicrophoneVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->reportMicrophoneGain(I)V

    .line 437
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 438
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 437
    invoke-static {v0, v3, v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastHeadsetState(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    .line 440
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onConnected()V

    .line 441
    return-void
.end method

.method public onDisconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 445
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDisconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connected:Z

    .line 449
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->device:Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 450
    invoke-virtual {v1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 449
    invoke-static {v0, v3, v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->broadcastHeadsetState(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V

    .line 456
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Headset disconnected, dropping current call from glass."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iput v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callState:I

    .line 459
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, v3}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallStateChanged(I)V

    .line 465
    :goto_0
    iget v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callSetupState:I

    if-eqz v0, :cond_1

    .line 466
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Headset disconnected, dropping current callsetup from glass."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iput v3, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callSetupState:I

    .line 468
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, v3}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onCallSetupStateChanged(I)V

    .line 473
    :goto_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onDisconnected()V

    .line 474
    return-void

    .line 461
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/glass/bluetooth/handsfree/HandsFree;->setCallerId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 478
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Broadcasting error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onError(I)V

    .line 480
    return-void
.end method

.method public onInBandRingChanged(Z)V
    .locals 5
    .param p1, "inBandRing"    # Z

    .prologue
    .line 414
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onInBandRingChanged: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handsFreeProfile:Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/HandsFreeProfile;->onInBandRingChanged(Z)V

    .line 416
    return-void
.end method

.method public onSpeakerVolume(I)V
    .locals 5
    .param p1, "desiredVolume"    # I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->volumeControl:Lcom/google/glass/bluetooth/handsfree/VolumeControl;

    invoke-virtual {v0, p1}, Lcom/google/glass/bluetooth/handsfree/VolumeControl;->setVolume(I)V

    .line 427
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Set the speaker volume to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method public startServiceConnection(Lcom/google/glass/bluetooth/BluetoothSocket;)V
    .locals 8
    .param p1, "socket"    # Lcom/google/glass/bluetooth/BluetoothSocket;

    .prologue
    const/4 v7, 0x0

    .line 276
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->terminate()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->connectHandsFree:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->closed:Z

    if-eqz v0, :cond_1

    .line 284
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Can\'t start connection since the HandsFree is closed."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 301
    :goto_0
    return-void

    .line 290
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 291
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothSocket;->getRemoteDevice()Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    move-result-object v4

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/Closeable;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;Lcom/google/glass/bluetooth/handsfree/ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->serviceConnection:Lcom/google/glass/bluetooth/handsfree/ServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/bluetooth/handsfree/ServiceConnection;->start()V

    .line 300
    iget-object v0, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->callActionReceiver:Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/bluetooth/handsfree/HandsFree$CallActionBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    goto :goto_0

    .line 292
    :catch_0
    move-exception v6

    .line 293
    .local v6, "e":Ljava/io/IOException;
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Could not start service connection: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/google/glass/bluetooth/handsfree/HandsFree;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0
.end method
