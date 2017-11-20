.class public final Lcom/google/android/location/f/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/g/a/b/b/a;I)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    const/16 v1, 0x96c

    if-lt p1, v1, :cond_2

    const/16 v1, 0x9a8

    if-gt p1, v1, :cond_2

    .line 29
    add-int/lit16 v0, p1, -0x967

    div-int/lit8 v0, v0, 0x5

    .line 41
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 43
    const/16 v0, 0x13ab

    if-gt v0, p1, :cond_1

    const/16 v0, 0x13c4

    if-gt p1, v0, :cond_1

    .line 47
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    .line 51
    :cond_1
    return-void

    .line 30
    :cond_2
    const/16 v1, 0x9b4

    if-ne p1, v1, :cond_3

    .line 31
    const/16 v0, 0xe

    goto :goto_0

    .line 32
    :cond_3
    const/16 v1, 0x1333

    if-lt p1, v1, :cond_4

    const/16 v1, 0x1374

    if-gt p1, v1, :cond_4

    .line 33
    rsub-int v0, p1, 0x1388

    div-int/lit8 v0, v0, 0x5

    rsub-int v0, v0, 0xc8

    goto :goto_0

    .line 34
    :cond_4
    const/16 v1, 0x1388

    if-le p1, v1, :cond_5

    const/16 v1, 0x1770

    if-ge p1, v1, :cond_5

    .line 36
    add-int/lit16 v0, p1, -0x1388

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 37
    :cond_5
    if-lez p1, :cond_0

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_0

    move v0, p1

    .line 39
    goto :goto_0
.end method
