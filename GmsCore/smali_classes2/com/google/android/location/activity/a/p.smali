.class public final Lcom/google/android/location/activity/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/List;)[D
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [D

    .line 222
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/d/i;

    .line 223
    const-wide/16 v4, 0x0

    iget-object v7, v0, Lcom/google/android/location/d/i;->b:[F

    array-length v8, v7

    move v0, v2

    :goto_1
    if-ge v0, v8, :cond_0

    aget v9, v7, v0

    float-to-double v10, v9

    float-to-double v12, v9

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 225
    goto :goto_0

    .line 226
    :cond_1
    return-object v3
.end method
