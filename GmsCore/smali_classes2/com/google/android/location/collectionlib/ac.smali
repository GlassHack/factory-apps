.class public final Lcom/google/android/location/collectionlib/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/hardware/Sensor;

.field final b:J

.field final c:[Lcom/google/android/location/collectionlib/ad;

.field d:I

.field e:I


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/location/collectionlib/ac;->a:Landroid/hardware/Sensor;

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x50

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/collectionlib/ac;->b:J

    .line 31
    const/16 v0, 0xbb8

    new-array v0, v0, [Lcom/google/android/location/collectionlib/ad;

    iput-object v0, p0, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    .line 32
    iput v4, p0, Lcom/google/android/location/collectionlib/ac;->d:I

    iput v4, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 121
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    if-ge v0, v2, :cond_3

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/location/collectionlib/ac;->a(I)Lcom/google/android/location/collectionlib/ad;

    move-result-object v2

    .line 123
    iget-wide v2, v2, Lcom/google/android/location/collectionlib/ad;->a:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_2

    .line 124
    if-nez v0, :cond_0

    .line 143
    :goto_1
    return v1

    .line 127
    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/location/collectionlib/ac;->a(I)Lcom/google/android/location/collectionlib/ad;

    move-result-object v1

    .line 128
    iget-wide v2, v1, Lcom/google/android/location/collectionlib/ad;->a:J

    sub-long v2, p1, v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 130
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 132
    goto :goto_1

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/location/collectionlib/ac;->a()Lcom/google/android/location/collectionlib/ad;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    iget-wide v0, v0, Lcom/google/android/location/collectionlib/ad;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 141
    iget v0, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 143
    :cond_4
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final a()Lcom/google/android/location/collectionlib/ad;
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_1
    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_1
    iget v0, p0, Lcom/google/android/location/collectionlib/ac;->d:I

    iget v1, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    aget-object v0, v1, v0

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/location/collectionlib/ad;
    .locals 3

    .prologue
    .line 106
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    if-lt p1, v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bound. Current size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/location/collectionlib/ac;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iget v0, p0, Lcom/google/android/location/collectionlib/ac;->d:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 111
    iget-object v1, p0, Lcom/google/android/location/collectionlib/ac;->c:[Lcom/google/android/location/collectionlib/ad;

    aget-object v0, v1, v0

    return-object v0
.end method
