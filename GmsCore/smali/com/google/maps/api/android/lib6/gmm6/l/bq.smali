.class public final Lcom/google/maps/api/android/lib6/gmm6/l/bq;
.super Ljava/lang/Object;


# direct methods
.method public static a(III)J
    .locals 9

    mul-int/lit8 v4, p2, 0x2

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v4, :cond_3

    and-int/lit8 v3, p0, 0x1

    and-int/lit8 v5, p1, 0x1

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    :goto_1
    shr-int/lit8 p0, p0, 0x1

    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    const/4 v3, 0x1

    if-ne v5, v3, :cond_2

    const-wide/16 v6, 0x2

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x3

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    const/16 v2, 0x3e

    if-le v4, v2, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid map tile proto X = %d, Y = %d, zoom = %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
