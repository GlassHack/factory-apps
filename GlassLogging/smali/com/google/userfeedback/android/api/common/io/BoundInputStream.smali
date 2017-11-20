.class public Lcom/google/userfeedback/android/api/common/io/BoundInputStream;
.super Ljava/io/InputStream;
.source "BoundInputStream.java"


# static fields
.field static final BUF_SIZE:I = 0x1000


# instance fields
.field private base:Ljava/io/InputStream;

.field private buf:[B

.field private bufPos:I

.field private bufSize:I

.field private remaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "base"    # Ljava/io/InputStream;
    .param p2, "len"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    .line 39
    iput p2, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    .line 41
    const/16 v0, 0x1000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->buf:[B

    .line 42
    return-void
.end method

.method private checkBuf()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    if-gtz v1, :cond_0

    .line 61
    :goto_0
    return v0

    .line 53
    :cond_0
    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    iget v2, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufSize:I

    if-lt v1, v2, :cond_2

    .line 54
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->base:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->buf:[B

    iget v3, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    iget-object v4, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->buf:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufSize:I

    .line 55
    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufSize:I

    if-gtz v1, :cond_1

    .line 56
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    goto :goto_0

    .line 59
    :cond_1
    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    .line 61
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRemaining()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, -0x1

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    .line 73
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->buf:[B

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->checkBuf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufSize:I

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 81
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->buf:[B

    iget v1, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->bufPos:I

    .line 83
    iget v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/userfeedback/android/api/common/io/BoundInputStream;->remaining:I

    move v0, p3

    .line 84
    goto :goto_0
.end method
