.class final Lcom/android/d/a/f;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/d/a/f;->a:I

    .line 443
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;B)V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/android/d/a/f;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic a(Lcom/android/d/a/f;)I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/d/a/f;->a:I

    return v0
.end method


# virtual methods
.method public final read()I
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 448
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 449
    iget v1, p0, Lcom/android/d/a/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/d/a/f;->a:I

    .line 451
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 457
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 458
    iget v1, p0, Lcom/android/d/a/f;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/d/a/f;->a:I

    .line 460
    :cond_0
    return v0
.end method
