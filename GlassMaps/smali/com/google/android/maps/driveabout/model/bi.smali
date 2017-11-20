.class public abstract Lcom/google/android/maps/driveabout/model/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bi;->d()I

    move-result v7

    .line 110
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->a()I

    move-result v8

    .line 111
    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    :cond_0
    move v0, v1

    .line 129
    :cond_1
    :goto_0
    return v0

    .line 114
    :cond_2
    const/4 v2, 0x2

    new-array v9, v2, [Lcom/google/android/maps/driveabout/model/ab;

    .line 115
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->b()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v4

    move v6, v1

    .line 116
    :goto_1
    if-ge v6, v7, :cond_4

    .line 117
    invoke-virtual {p0, v6, v9}, Lcom/google/android/maps/driveabout/model/bi;->a(I[Lcom/google/android/maps/driveabout/model/ab;)V

    move v2, v1

    move-object v3, v4

    .line 119
    :goto_2
    if-ge v2, v8, :cond_3

    .line 120
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 121
    aget-object v10, v9, v1

    aget-object v11, v9, v0

    invoke-static {v10, v11, v3, v5}, Lcom/google/android/maps/driveabout/model/ae;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_2

    .line 116
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)Lcom/google/android/maps/driveabout/model/ab;
.end method

.method public a()Lcom/google/android/maps/driveabout/model/bh;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bi;->c()Lcom/google/android/maps/driveabout/model/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/bh;->a(Lcom/google/android/maps/driveabout/model/am;)Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I[Lcom/google/android/maps/driveabout/model/ab;)V
.end method

.method public abstract a(Lcom/google/android/maps/driveabout/model/ab;)Z
.end method

.method public a(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bi;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/bh;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 76
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/model/bi;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/bi;->c(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public b(Lcom/google/android/maps/driveabout/model/an;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/bi;->a()Lcom/google/android/maps/driveabout/model/bh;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/an;->c()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/model/bh;->b(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/model/an;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/model/bi;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/model/bi;->a(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/model/an;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/model/bi;->c(Lcom/google/android/maps/driveabout/model/an;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public abstract c()Lcom/google/android/maps/driveabout/model/an;
.end method

.method public abstract d()I
.end method
