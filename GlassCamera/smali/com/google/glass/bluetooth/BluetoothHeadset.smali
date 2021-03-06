.class public abstract Lcom/google/glass/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"


# static fields
.field public static final ACTION_ACCEPT_CALL:Ljava/lang/String; = "com.google.glass.action.ACCEPT_CALL"

.field public static final ACTION_CALL_DIAL:Ljava/lang/String; = "com.google.glass.action.CALL_DIAL"

.field public static final ACTION_CALL_REDIAL:Ljava/lang/String; = "com.google.glass.action.CALL_REDIAL"

.field public static final ACTION_CONNECT:Ljava/lang/String; = "com.google.glass.action.CONNECT_HEADSET"

.field public static final ACTION_CONNECT_SCO:Ljava/lang/String; = "com.google.glass.action.CONNECT_HEADSET_SCO"

.field public static final ACTION_HEADSET_STATE:Ljava/lang/String; = "com.google.glass.action.HEADSET_STATE"

.field public static final ACTION_REJECT_CALL:Ljava/lang/String; = "com.google.glass.action.REJECT_CALL"

.field public static final ACTION_VOICE_RECOGNITION:Ljava/lang/String; = "com.google.glass.action.BLUETOOTH_VOICE_RECOGNITION"

.field public static final ACTION_VOLUME:Ljava/lang/String; = "com.google.glass.action.BLUETOOTH_VOLUME"

.field public static final CALL_ERROR_AG_FAILURE:I = 0x0

.field public static final CALL_ERROR_DIAL_STRING_TOO_LONG:I = 0x1a

.field public static final CALL_ERROR_INCORRECT_PASSWORD:I = 0x10

.field public static final CALL_ERROR_INVALID_CHARACTERS_IN_DIAL_STRING:I = 0x1b

.field public static final CALL_ERROR_INVALID_CHARACTERS_IN_TEXT_STRING:I = 0x19

.field public static final CALL_ERROR_INVALID_INDEX:I = 0x15

.field public static final CALL_ERROR_MEMORY_FAILURE:I = 0x17

.field public static final CALL_ERROR_MEMORY_FULL:I = 0x14

.field public static final CALL_ERROR_NETWORK_NOT_ALLOWED_EMERGENCY_CALLS_ONLY:I = 0x20

.field public static final CALL_ERROR_NONE:I = -0x1

.field public static final CALL_ERROR_NO_CONNECTION_TO_PHONE:I = 0x1

.field public static final CALL_ERROR_NO_NETWORK_SERVICE:I = 0x1e

.field public static final CALL_ERROR_OPERATION_NOT_ALLOWED:I = 0x3

.field public static final CALL_ERROR_OPERATION_NOT_SUPPORT:I = 0x4

.field public static final CALL_ERROR_PH_SIM_PIN_REQUIRED:I = 0x5

.field public static final CALL_ERROR_SIM_BUSY:I = 0xe

.field public static final CALL_ERROR_SIM_FAILURE:I = 0xd

.field public static final CALL_ERROR_SIM_NOT_INSERTED:I = 0xa

.field public static final CALL_ERROR_SIM_PIN2_REQUIRED:I = 0x11

.field public static final CALL_ERROR_SIM_PIN_REQUIRED:I = 0xb

.field public static final CALL_ERROR_SIM_PUK2_REQUIRED:I = 0x12

.field public static final CALL_ERROR_SIM_PUK_REQUIRED:I = 0xc

.field public static final CALL_ERROR_TEXT_STRING_TOO_LONG:I = 0x18

.field public static final CALL_SETUP_STATE_INCOMING:I = 0x1

.field public static final CALL_SETUP_STATE_NONE:I = 0x0

.field public static final CALL_SETUP_STATE_OUTGOING:I = 0x2

.field public static final CALL_SETUP_STATE_REMOTE_PARTY_ALERTED:I = 0x3

.field public static final CALL_STATE_IN_CALL:I = 0x1

.field public static final CALL_STATE_NONE:I = 0x0

.field public static final EXTRA_ENABLE_VOICE_RECOGNITION:Ljava/lang/String; = "com.google.glass.extra.ENABLE_VOICE_RECOGNITION"

.field public static final EXTRA_LOCAL_RINGTONE:Ljava/lang/String; = "com.google.glass.extra.LOCAL_RINGTONE"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "com.google.glass.extra.PHONE_NUMBER"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.google.glass.extra.STATE"

.field public static final EXTRA_VOLUME:Ljava/lang/String; = "com.google.glass.extra.VOLUME"

.field public static final HEADSET_STATE_CONNECTED:I = 0x1

.field public static final HEADSET_STATE_DISCONNECTED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastAcceptCall(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.action.ACCEPT_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public static broadcastDial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "com.google.glass.action.CALL_DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static broadcastHeadsetState(Landroid/content/Context;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newState"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    const-string v1, "com.google.glass.action.HEADSET_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static broadcastRedial(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.action.CALL_REDIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public static broadcastRejectCall(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static getHeadsetState(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v0, "com.google.glass.action.HEADSET_STATE"

    invoke-static {p0, v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getIntentFromStickyBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->getHeadsetState(Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static getHeadsetState(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p0, :cond_0

    .line 87
    :goto_0
    return v0

    :cond_0
    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static getIntentFromStickyBroadcast(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, "appContext":Landroid/content/Context;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method
