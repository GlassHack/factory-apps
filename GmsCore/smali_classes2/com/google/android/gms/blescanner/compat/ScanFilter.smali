.class public final Lcom/google/android/gms/blescanner/compat/ScanFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/ParcelUuid;

.field private final d:Landroid/os/ParcelUuid;

.field private final e:Landroid/os/ParcelUuid;

.field private final f:[B

.field private final g:[B

.field private final h:I

.field private final i:[B

.field private final j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/gms/blescanner/compat/l;

    invoke-direct {v0}, Lcom/google/android/gms/blescanner/compat/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    .line 70
    iput-object p4, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    .line 71
    iput-object p2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    .line 73
    iput-object p6, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    .line 74
    iput-object p7, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    .line 75
    iput p8, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    .line 76
    iput-object p9, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    .line 77
    iput-object p10, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BB)V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p10}, Lcom/google/android/gms/blescanner/compat/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    return-void
.end method

.method private static a([B[B[B)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 351
    if-eqz p2, :cond_0

    array-length v0, p2

    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    if-nez p1, :cond_3

    move v0, v1

    .line 355
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 356
    aget-byte v3, p2, v0

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 360
    goto :goto_0

    :cond_3
    move v0, v1

    .line 362
    :goto_2
    array-length v3, p0

    if-ge v0, v3, :cond_4

    .line 363
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    and-int/2addr v3, v4

    aget-byte v4, p1, v0

    aget-byte v5, p0, v0

    and-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 367
    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/blescanner/compat/ScanResult;)Z
    .locals 14

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/blescanner/compat/ScanResult;->a()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/blescanner/compat/ScanResult;->b()Lcom/google/android/gms/blescanner/compat/n;

    move-result-object v2

    .line 278
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    if-eqz v0, :cond_4

    .line 281
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/blescanner/compat/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 286
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    iget-object v0, v2, Lcom/google/android/gms/blescanner/compat/n;->a:Ljava/util/List;

    if-nez v3, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_c

    .line 292
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_6
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    if-nez v4, :cond_8

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    if-nez v1, :cond_9

    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v10

    and-long/2addr v8, v10

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v12

    and-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    and-long/2addr v6, v8

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    and-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    .line 296
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_e

    .line 297
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_4
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a([B[B[B)Z

    move-result v0

    if-nez v0, :cond_e

    .line 299
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 297
    :cond_d
    iget-object v4, v2, Lcom/google/android/gms/blescanner/compat/n;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_4

    .line 304
    :cond_e
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    if-ltz v0, :cond_f

    .line 305
    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    iget-object v3, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    iget-object v2, v2, Lcom/google/android/gms/blescanner/compat/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a([B[B[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 307
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 311
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public final c()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 391
    if-ne p0, p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 395
    goto :goto_0

    .line 397
    :cond_3
    check-cast p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;

    .line 398
    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    iget v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final f()[B
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    return-object v0
.end method

.method public final g()Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 384
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()[B
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    return-object v0
.end method

.method public final j()[B
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    invoke-static {v1}, Lcom/google/android/gms/blescanner/compat/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->c:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->d:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    if-nez v0, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_3

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->e:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    if-nez v0, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    if-nez v0, :cond_b

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->g:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 118
    :cond_3
    iget v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    if-nez v0, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->i:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    if-nez v0, :cond_d

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/blescanner/compat/ScanFilter;->j:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 130
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 87
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 91
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 95
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 98
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 103
    goto :goto_4

    :cond_a
    move v0, v2

    .line 106
    goto :goto_5

    :cond_b
    move v0, v2

    .line 111
    goto :goto_6

    :cond_c
    move v0, v2

    .line 119
    goto :goto_7

    :cond_d
    move v1, v2

    .line 124
    goto :goto_8
.end method
