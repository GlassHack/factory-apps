.class public Lcom/google/android/location/collectionlib/SensorScannerConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/location/collectionlib/cf;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/cf;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJJ)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->d:I

    .line 33
    iput p1, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    .line 34
    iput-wide p2, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b:J

    .line 35
    iput-wide p4, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c:J

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->d:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c:J

    .line 42
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    return v0
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    sget-object v1, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    if-ne p1, v1, :cond_0

    .line 63
    iget v1, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->d:I

    iget v2, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    if-lt v1, v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->d:I

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SensorScannerConfig [mNumSamplesToSkip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeoutForSkip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSensorTimeSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    return-void
.end method
