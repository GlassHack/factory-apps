.class public final Lcom/google/android/gms/blescanner/compat/ScanResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:Lcom/google/android/gms/blescanner/compat/n;

.field private c:I

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/gms/blescanner/compat/o;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/compat/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/blescanner/compat/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/google/android/gms/blescanner/compat/n;IJ)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    .line 44
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    .line 45
    iput p3, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    .line 46
    iput-wide p4, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/blescanner/compat/n;->a([B)Lcom/google/android/gms/blescanner/compat/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/gms/blescanner/compat/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/blescanner/compat/n;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    return v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    if-ne p0, p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_3
    check-cast p1, Lcom/google/android/gms/blescanner/compat/ScanResult;

    .line 130
    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    iget v3, p1, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanResult{mDevice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->b:Lcom/google/android/gms/blescanner/compat/n;

    iget-object v0, v0, Lcom/google/android/gms/blescanner/compat/n;->e:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 67
    :goto_1
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-wide v0, p0, Lcom/google/android/gms/blescanner/compat/ScanResult;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
