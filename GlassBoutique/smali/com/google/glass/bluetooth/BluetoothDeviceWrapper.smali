.class public Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
.super Ljava/lang/Object;
.source "BluetoothDeviceWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_BOND_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.device.action.BOND_STATE_CHANGED"

.field public static final ACTION_UUID:Ljava/lang/String; = "android.bluetooth.device.action.UUID"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISCOVERABLE_TIMEOUT_IN_SECONDS:I = 0x0

.field public static final EXTRA_BOND_STATE:Ljava/lang/String; = "android.bluetooth.device.extra.BOND_STATE"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "android.bluetooth.device.extra.DEVICE"

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_1:Ljava/lang/String; = "00:1A:11"

.field private static final GOOGLE_BLUETOOTH_VENDOR_PREFIX_2:Ljava/lang/String; = "F8:8F:CA"

.field public static final MYGLASS_CONNECTION_TYPE_MULTICAST:I = 0x2

.field public static final MYGLASS_CONNECTION_TYPE_RFCOMM:I = 0x1

.field public static final MYGLASS_CONNECTION_TYPE_UNKNOWN:I = 0x0

.field private static final WEARABLE_GLASSES_DEVICE_CLASS:I = 0x714

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private myGlassConnectionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 291
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 61
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 306
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 308
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 333
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 335
    .local v0, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 336
    sget v1, Lcom/google/glass/common/R$string;->generic_bluetooth_device_name:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 336
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 339
    :cond_0
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unexpected serial number: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-direct {v0, p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    const-class v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 324
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method


# virtual methods
.method public addMyGlassConnectionType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 119
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 122
    :cond_0
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelPairingUserInput()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->cancelPairingUserInput(Landroid/bluetooth/BluetoothDevice;)V

    .line 135
    return-void
.end method

.method public createBond()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public createInsecureRfcommSocketToServiceRecord(Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 3
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public createRfcommSocketToServiceRecord(Landroid/os/ParcelUuid;)Lcom/google/glass/bluetooth/BluetoothSocket;
    .locals 3
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothSocket;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/bluetooth/BluetoothSocket;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherDevice"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    .line 256
    .end local p1    # "otherDevice":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 247
    .restart local p1    # "otherDevice":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 248
    goto :goto_0

    .line 251
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    if-ne v2, v3, :cond_4

    .line 252
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_4
    instance-of v2, p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 256
    .end local p1    # "otherDevice":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public fetchUuidsWithSdp()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 211
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 184
    :goto_0
    return-object v1

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Null pointer in getting bluetooth device address"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMyGlassConnectionType()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Null pointer in getting bluetooth device name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const-string v1, ""

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public hasMyGlassMulticastConnection()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNap()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 152
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_2

    .line 153
    sget-object v4, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Don\'t have SDP records for %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v2, v3

    .line 161
    :cond_1
    return v2

    .line 155
    :cond_2
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 156
    .local v0, "uuid":Landroid/os/ParcelUuid;
    sget-object v6, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGlass()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 93
    .local v2, "uuids":[Landroid/os/ParcelUuid;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "address":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/google/glass/bluetooth/BluetoothUuids;->IDENTITY_UUID:Landroid/os/ParcelUuid;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 98
    :cond_1
    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 100
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-nez v1, :cond_2

    move v3, v4

    .line 101
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    and-int/lit16 v5, v5, 0x714

    const/16 v6, 0x714

    if-ne v5, v6, :cond_3

    const-string v5, "00:1A:11"

    .line 107
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "F8:8F:CA"

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v1    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    :cond_4
    move v3, v4

    .line 110
    goto :goto_0
.end method

.method public isIOSDevice()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothMacAddress;->isAppleMacAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->hasMyGlassMulticastConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhone()Z
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 73
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBond()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 175
    return-void
.end method

.method public setPairingConfirmation(Z)V
    .locals 1
    .param p1, "confirm"    # Z

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 229
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "pinString"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 233
    invoke-static {v1, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->convertPinToBytes(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)[B

    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->setPin(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " @ ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "identity":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 273
    .end local v0    # "identity":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 267
    .restart local v0    # "identity":Ljava/lang/String;
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " BONDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " BONDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 287
    iget v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->myGlassConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    return-void
.end method
