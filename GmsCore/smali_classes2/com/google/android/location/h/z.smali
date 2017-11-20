.class final Lcom/google/android/location/h/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([D)D
    .locals 6

    .prologue
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v4, p0, v0

    .line 62
    add-double/2addr v2, v4

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-wide v2
.end method

.method public static a(Ljava/util/List;[D)Lcom/google/android/location/f/n;
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required List<Position>.size() == weights.length. Input was List<Position>=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and weights.length=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/google/android/location/h/z;->a([D)D

    move-result-wide v6

    .line 39
    cmpl-double v0, v6, v2

    if-nez v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/n;

    .line 44
    aget-wide v8, p1, v1

    iget v10, v0, Lcom/google/android/location/f/n;->a:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 45
    aget-wide v8, p1, v1

    iget v0, v0, Lcom/google/android/location/f/n;->b:I

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 49
    :cond_2
    div-double v0, v4, v6

    double-to-int v1, v0

    .line 50
    div-double/2addr v2, v6

    double-to-int v2, v2

    .line 51
    new-instance v0, Lcom/google/android/location/f/n;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/f/n;-><init>(II)V

    goto :goto_0
.end method
