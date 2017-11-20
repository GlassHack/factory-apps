.class public final Lcom/google/android/location/collectionlib/RealCollectorConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/location/collectionlib/ai;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field static a:Z

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;


# instance fields
.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;

.field private final f:Ljava/util/Set;

.field private final g:Lcom/google/android/location/collectionlib/aj;

.field private final h:Ljava/lang/String;

.field private final i:[B

.field private final j:J

.field private final k:J

.field private final l:Z

.field private final m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private final q:Z

.field private volatile r:Z

.field private s:Lcom/google/android/location/p/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a:Z

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->c:Ljava/util/Map;

    .line 49
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->c:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->e:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->f:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->i:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->j:Lcom/google/android/location/collectionlib/cb;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->k:Lcom/google/android/location/collectionlib/cb;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->l:Lcom/google/android/location/collectionlib/cb;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->n:Lcom/google/android/location/collectionlib/cb;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    sget-object v1, Lcom/google/android/location/collectionlib/cb;->o:Lcom/google/android/location/collectionlib/cb;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    sget-object v2, Lcom/google/android/location/collectionlib/RealCollectorConfig;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_0
    new-instance v0, Lcom/google/android/location/collectionlib/bn;

    invoke-direct {v0}, Lcom/google/android/location/collectionlib/bn;-><init>()V

    sput-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    .line 128
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    .line 143
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 499
    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a(I)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/collectionlib/aj;->valueOf(Ljava/lang/String;)Lcom/google/android/location/collectionlib/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 505
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/SensorScannerConfig;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 506
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    if-eqz v0, :cond_0

    .line 507
    const-wide/16 v4, 0x0

    .line 509
    :cond_0
    iput-wide v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 512
    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->o:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 516
    if-lez v0, :cond_2

    .line 517
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    .line 518
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 522
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    .line 525
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/p/j;->a(Landroid/os/Parcelable;)Lcom/google/android/location/p/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    .line 526
    return-void

    :cond_1
    move v0, v2

    .line 502
    goto :goto_0

    .line 520
    :cond_2
    iput-object v6, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    goto :goto_1

    :cond_3
    move v0, v1

    .line 522
    goto :goto_2

    :cond_4
    move v0, v1

    .line 523
    goto :goto_3

    :cond_5
    move v2, v1

    .line 524
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/location/collectionlib/RealCollectorConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;ZJJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/aj;Ljava/lang/String;Ljava/lang/String;[BZLcom/google/android/location/p/j;)V
    .locals 7

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    .line 128
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    .line 194
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string v3, "delayBetweenWifiScansMills cannot be negative"

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 196
    if-eqz p7, :cond_4

    .line 197
    const-wide/16 p5, 0x0

    .line 198
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    .line 202
    :goto_1
    sget-object v2, Lcom/google/android/location/collectionlib/aj;->b:Lcom/google/android/location/collectionlib/aj;

    if-ne p8, v2, :cond_0

    .line 203
    const-string v2, "dataPath could not be null if you want to write data to local storage"

    move-object/from16 v0, p9

    invoke-static {v0, v2}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    sget-object v2, Lcom/google/android/location/collectionlib/aj;->a:Lcom/google/android/location/collectionlib/aj;

    if-ne p8, v2, :cond_7

    .line 207
    if-nez p7, :cond_5

    move-wide v2, p5

    .line 208
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    const-string v3, "Invalid scan duration for MEMORY collection destination."

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 214
    :goto_4
    if-eqz p7, :cond_1

    .line 215
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    sget-object v2, Lcom/google/android/location/collectionlib/cb;->d:Lcom/google/android/location/collectionlib/cb;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_5
    const-string v3, "sensorConfig supports acclerometer scanner only."

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 220
    :cond_1
    sget-object v2, Lcom/google/android/location/collectionlib/aj;->d:Lcom/google/android/location/collectionlib/aj;

    if-ne p8, v2, :cond_a

    .line 221
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/cb;

    .line 222
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/cb;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 223
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Scanner types can\'t include non-sensor type when destination is ScannerType.MEMORY_SENSOR_EVENTS"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 200
    :cond_4
    iput-boolean p2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    goto :goto_1

    .line 207
    :cond_5
    invoke-virtual {p7}, Lcom/google/android/location/collectionlib/SensorScannerConfig;->c()J

    move-result-wide v2

    goto :goto_2

    .line 208
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 211
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_8

    const/4 v2, 0x1

    :goto_6
    const-string v3, "Scan duration should be >= 0"

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    .line 215
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 229
    :cond_a
    invoke-static/range {p9 .. p9}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 230
    invoke-static/range {p10 .. p10}, Lcom/google/android/location/collectionlib/db;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p11, :cond_d

    move-object/from16 v0, p11

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    :cond_b
    const/4 v2, 0x1

    :goto_7
    const-string v3, "You must specify a valid key for encryption when writing data to persistent storage."

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->a(ZLjava/lang/Object;)V

    .line 232
    sget-boolean v2, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a:Z

    if-nez v2, :cond_c

    .line 233
    if-nez p11, :cond_c

    .line 234
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 237
    const-string v4, "/data/data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "The key should be in the /data/data partition."

    invoke-static {v3, v4}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V

    .line 239
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_8
    const-string v3, "%s does not exist."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p10, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/collectionlib/db;->b(ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_c
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    .line 248
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    .line 249
    iput-object p1, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    .line 250
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    .line 251
    iput-wide p5, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    .line 252
    iput-object p7, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    .line 253
    iput-object p8, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    .line 254
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    .line 255
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    .line 256
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    .line 257
    return-void

    .line 230
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 239
    :cond_e
    const/4 v2, 0x0

    goto :goto_8

    .line 242
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to parse the key path."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic constructor <init>(Ljava/util/Set;ZJJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/aj;Ljava/lang/String;Ljava/lang/String;[BZLcom/google/android/location/p/j;B)V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p13}, Lcom/google/android/location/collectionlib/RealCollectorConfig;-><init>(Ljava/util/Set;ZJJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/aj;Ljava/lang/String;Ljava/lang/String;[BZLcom/google/android/location/p/j;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 671
    if-eqz p0, :cond_1

    .line 672
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/location/collectionlib/cb;->b(I)Lcom/google/android/location/collectionlib/cb;

    move-result-object v2

    .line 675
    if-eqz v2, :cond_0

    .line 676
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 725
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 727
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 728
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 729
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 731
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    return-object v0
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;I)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    .line 601
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Lcom/google/android/location/collectionlib/aj;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 570
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    return v0
.end method

.method public final i()Lcom/google/android/location/collectionlib/SensorScannerConfig;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    return-object v0
.end method

.method public final j()[B
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    return v0
.end method

.method public final m()Lcom/google/android/location/collectionlib/ai;
    .locals 15

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 702
    new-instance v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    iget-wide v6, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    iget-object v8, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    iget-object v9, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    iget-object v10, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a(Ljava/lang/String;)[B

    move-result-object v12

    iget-boolean v13, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    iget-object v14, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/location/collectionlib/RealCollectorConfig;-><init>(Ljava/util/Set;ZJJLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/aj;Ljava/lang/String;Ljava/lang/String;[BZLcom/google/android/location/p/j;)V

    .line 706
    iget v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    iput v0, v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    .line 707
    iget-object v0, v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 708
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->o:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->o:Ljava/lang/String;

    .line 709
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    iput-boolean v0, v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    .line 710
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    iput-boolean v0, v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    .line 713
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public final n()Ljava/util/Map;
    .locals 5

    .prologue
    .line 743
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 744
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cb;

    .line 745
    sget-object v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    sget-object v1, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 747
    iget-object v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 748
    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    .line 749
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 752
    :cond_2
    return-object v2
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 687
    const-string v0, "Scanner types: %s; Dest: %s; WifiDelay: %d; ScanDuration: %d, SensorConfig: %s, SensorDelay: %s; Data path: %s; Key path: %s; View opted out WIFI APs: %s; AutomaticShutDown: %s; ForceUpload: %s"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->f:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/cb;->a(Ljava/util/Set;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->g:Lcom/google/android/location/collectionlib/aj;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/aj;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->l:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 645
    iget-wide v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 646
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->m:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 647
    iget v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->e:Ljava/util/Map;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/collectionlib/cb;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    move v0, v3

    .line 643
    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    if-nez v0, :cond_3

    move v0, v3

    .line 652
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    if-lez v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 656
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->p:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->q:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    iget-boolean v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->r:Z

    if-eqz v0, :cond_6

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->s:Lcom/google/android/location/p/j;

    invoke-virtual {v0}, Lcom/google/android/location/p/j;->b()Landroid/os/Parcelable;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 660
    return-void

    .line 651
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->i:[B

    array-length v0, v0

    goto :goto_2

    :cond_4
    move v0, v3

    .line 656
    goto :goto_3

    :cond_5
    move v0, v3

    .line 657
    goto :goto_4

    :cond_6
    move v2, v3

    .line 658
    goto :goto_5

    .line 659
    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
