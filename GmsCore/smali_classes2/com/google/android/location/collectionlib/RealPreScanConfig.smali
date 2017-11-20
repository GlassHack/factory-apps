.class public Lcom/google/android/location/collectionlib/RealPreScanConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/location/collectionlib/bk;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:J

.field private final c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/location/collectionlib/bp;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/bp;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->d:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 50
    invoke-static {v1}, Lcom/google/android/location/collectionlib/cb;->a(I)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->a:Ljava/util/Set;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->b:J

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->c:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->d:Z

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/RealPreScanConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->b:J

    return-wide v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->d:Z

    return v0
.end method

.method public final d()Ljava/util/Map;
    .locals 4

    .prologue
    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 118
    sget-object v3, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    sget-object v3, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    iget v3, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 104
    const-string v0, "Scanner types: %s; ScanDuration: %d, SensorDelay: %d, viewOptedOutWifiAps: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->a:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->d:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealPreScanConfig;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
