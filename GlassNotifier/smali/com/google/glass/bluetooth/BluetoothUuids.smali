.class public abstract Lcom/google/glass/bluetooth/BluetoothUuids;
.super Ljava/lang/Object;
.source "BluetoothUuids.java"


# static fields
.field public static final BLUETOOTH_HANDSFREE_AUDIO_GATEWAY_UUID:Landroid/os/ParcelUuid;

.field public static final BLUETOOTH_HANDSFREE_SDP_NAME:Ljava/lang/String; = "Handsfree"

.field public static final BLUETOOTH_HANDSFREE_UUID:Landroid/os/ParcelUuid;

.field public static final BLUETOOTH_HEADSET_UUID:Landroid/os/ParcelUuid;

.field public static final BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

.field public static final PROXY_SDP_NAME:Ljava/lang/String; = "Glass Proxy"

.field public static final PROXY_UUID:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "fafbdd20-83f0-4389-addf-917ac9dae5b1"

    .line 11
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->PROXY_UUID:Landroid/os/ParcelUuid;

    .line 14
    const-string v0, "00001116-0000-1000-8000-00805F9B34FB"

    .line 15
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    .line 17
    const-string v0, "00001108-0000-1000-8000-00805F9B34FB"

    .line 18
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HEADSET_UUID:Landroid/os/ParcelUuid;

    .line 20
    const-string v0, "0000111E-0000-1000-8000-00805F9B34FB"

    .line 21
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_UUID:Landroid/os/ParcelUuid;

    .line 24
    const-string v0, "0000111F-0000-1000-8000-00805F9B34FB"

    .line 25
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_HANDSFREE_AUDIO_GATEWAY_UUID:Landroid/os/ParcelUuid;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
