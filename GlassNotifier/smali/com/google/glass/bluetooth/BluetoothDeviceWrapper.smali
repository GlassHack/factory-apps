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

.field private static final COD_UNCLASSIFIED:I = 0x1f00

.field private static final COD_WEARABLE_GLASSES:I = 0x714

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

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 243
    new-instance v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    invoke-direct {v0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;-><init>()V

    sput-object v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/BluetoothDeviceWrapper$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildProvisionalName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 284
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 286
    .local v0, "serial":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 287
    sget v1, Lcom/google/glass/common/R$string;->generic_bluetooth_device_name:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 287
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 290
    :cond_0
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unexpected serial number: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static from(Landroid/bluetooth/BluetoothDevice;)Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 48
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
    .line 274
    const-class v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 275
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    return-object v0
.end method


# virtual methods
.method public cancelPairingUserInput()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->cancelPairingUserInput(Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    return-void
.end method

.method public createBond()Z
    .locals 1

    .prologue
    .line 121
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
    .line 172
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
    .line 167
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
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherDevice"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-ne p1, p0, :cond_1

    .line 207
    .end local p1    # "otherDevice":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 199
    .restart local p1    # "otherDevice":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/bluetooth/BluetoothDevice;

    if-ne v2, v3, :cond_4

    .line 204
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 207
    :cond_4
    instance-of v2, p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;

    .line 208
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
    .line 162
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->fetchUuidsWithSdp()Z

    .line 163
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Null pointer in getting bluetooth device address"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Null pointer in getting bluetooth device name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const-string v1, ""

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public hasNap()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 104
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    if-nez v1, :cond_2

    .line 105
    sget-object v4, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Don\'t have SDP records for %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v2, v3

    .line 113
    :cond_1
    return v2

    .line 107
    :cond_2
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 108
    .local v0, "uuid":Landroid/os/ParcelUuid;
    sget-object v6, Lcom/google/glass/bluetooth/BluetoothUuids;->BLUETOOTH_NAP_UUID:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGlass()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "address":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 84
    .local v1, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    and-int/lit16 v3, v3, 0x714

    const/16 v4, 0x714

    if-eq v3, v4, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x1f00

    if-ne v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isIOSDevice()Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothMacAddress;->isAppleMacAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhone()Z
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 64
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x200

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeBond()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    return-void
.end method

.method public setPairingConfirmation(Z)V
    .locals 1
    .param p1, "confirm"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 181
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 2
    .param p1, "pinString"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 185
    invoke-static {v1, p1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->convertPinToBytes(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)[B

    move-result-object v1

    .line 184
    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenBluetoothDevice;->setPin(Landroid/bluetooth/BluetoothDevice;[B)V

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " @ ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] BluetoothClass["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "identity":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    .end local v0    # "identity":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 220
    .restart local v0    # "identity":Ljava/lang/String;
    :pswitch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " BONDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " BONDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
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
    .line 239
    iget-object v0, p0, Lcom/google/glass/bluetooth/BluetoothDeviceWrapper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 240
    return-void
.end method
