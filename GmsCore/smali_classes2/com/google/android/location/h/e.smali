.class public final Lcom/google/android/location/h/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:D

.field b:D

.field c:I

.field d:I

.field final e:[D

.field final f:[D

.field final g:[I

.field private h:D

.field private i:D


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v2, p0, Lcom/google/android/location/h/e;->a:D

    .line 18
    iput-wide v2, p0, Lcom/google/android/location/h/e;->b:D

    .line 19
    iput v1, p0, Lcom/google/android/location/h/e;->c:I

    .line 20
    iput v1, p0, Lcom/google/android/location/h/e;->d:I

    .line 22
    iput-wide v2, p0, Lcom/google/android/location/h/e;->h:D

    .line 23
    iput-wide v2, p0, Lcom/google/android/location/h/e;->i:D

    .line 31
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/google/android/location/h/e;->e:[D

    .line 32
    new-array v0, p1, [D

    iput-object v0, p0, Lcom/google/android/location/h/e;->f:[D

    .line 33
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/location/h/e;->g:[I

    .line 34
    iput-wide v2, p0, Lcom/google/android/location/h/e;->a:D

    iput-wide v2, p0, Lcom/google/android/location/h/e;->b:D

    iput v1, p0, Lcom/google/android/location/h/e;->c:I

    iput v1, p0, Lcom/google/android/location/h/e;->d:I

    iput-wide v2, p0, Lcom/google/android/location/h/e;->h:D

    iput-wide v2, p0, Lcom/google/android/location/h/e;->i:D

    .line 35
    return-void
.end method


# virtual methods
.method public final a()D
    .locals 4

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/google/android/location/h/e;->h:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/h/e;->c:I

    if-eqz v0, :cond_0

    .line 74
    iget-wide v0, p0, Lcom/google/android/location/h/e;->a:D

    iget v2, p0, Lcom/google/android/location/h/e;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/h/e;->h:D

    .line 76
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/h/e;->h:D

    return-wide v0
.end method

.method public final b()D
    .locals 4

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/google/android/location/h/e;->i:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/h/e;->c:I

    if-eqz v0, :cond_0

    .line 81
    iget-wide v0, p0, Lcom/google/android/location/h/e;->b:D

    iget v2, p0, Lcom/google/android/location/h/e;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/h/e;->i:D

    .line 83
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/h/e;->i:D

    return-wide v0
.end method

.method public final c()I
    .locals 14

    .prologue
    const/16 v5, 0x1388

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 91
    iget v0, p0, Lcom/google/android/location/h/e;->c:I

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return v4

    .line 95
    :cond_0
    iget v0, p0, Lcom/google/android/location/h/e;->c:I

    if-ne v0, v13, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/location/h/e;->g:[I

    aget v4, v0, v4

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/h/e;->a()D

    move-result-wide v0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/location/h/e;->b()D

    move-result-wide v2

    move v8, v4

    move v9, v4

    move v10, v5

    move v11, v5

    move v12, v4

    .line 107
    :goto_1
    iget v4, p0, Lcom/google/android/location/h/e;->c:I

    if-ge v8, v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/google/android/location/h/e;->e:[D

    aget-wide v4, v4, v8

    iget-object v6, p0, Lcom/google/android/location/h/e;->f:[D

    aget-wide v6, v6, v8

    invoke-static/range {v0 .. v7}, Lcom/google/android/location/h/d;->a(DDDD)D

    move-result-wide v4

    double-to-int v6, v4

    .line 109
    add-int/2addr v12, v6

    .line 110
    iget-object v4, p0, Lcom/google/android/location/h/e;->g:[I

    aget v4, v4, v8

    if-le v6, v4, :cond_5

    move v5, v13

    .line 113
    :goto_2
    iget-object v4, p0, Lcom/google/android/location/h/e;->g:[I

    aget v4, v4, v8

    if-ge v4, v11, :cond_4

    .line 114
    iget-object v4, p0, Lcom/google/android/location/h/e;->g:[I

    aget v7, v4, v8

    .line 107
    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v9, v5

    move v10, v6

    move v11, v7

    goto :goto_1

    .line 119
    :cond_2
    if-eqz v9, :cond_3

    .line 120
    iget v0, p0, Lcom/google/android/location/h/e;->c:I

    div-int v4, v12, v0

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    :cond_4
    move v6, v10

    move v7, v11

    goto :goto_3

    :cond_5
    move v5, v9

    goto :goto_2
.end method
