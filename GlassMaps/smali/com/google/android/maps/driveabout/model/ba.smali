.class public final Lcom/google/android/maps/driveabout/model/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/DataInput;)I
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 19
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 20
    if-ge v0, v3, :cond_1

    .line 45
    :cond_0
    return v0

    .line 21
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    .line 23
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 24
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    .line 25
    if-lt v1, v3, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 28
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0xe

    or-int/2addr v0, v2

    .line 29
    if-lt v1, v3, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 32
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x15

    or-int/2addr v0, v2

    .line 33
    if-lt v1, v3, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 36
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v0, v2

    .line 37
    if-lt v1, v3, :cond_0

    .line 42
    :goto_0
    if-lt v1, v3, :cond_0

    .line 43
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_0
.end method

.method public static a(Ljava/io/DataOutput;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x80

    .line 54
    if-gez p1, :cond_0

    .line 58
    const-wide v0, 0x100000000L

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 59
    or-long v2, v0, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 60
    const/4 v2, 0x7

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 61
    const/16 v2, 0xe

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 62
    const/16 v2, 0x15

    shr-long v2, v0, v2

    or-long/2addr v2, v4

    long-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/io/DataOutput;->write(I)V

    .line 63
    const/16 v2, 0x1c

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 85
    :goto_0
    return-void

    .line 64
    :cond_0
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 65
    invoke-interface {p0, p1}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 66
    :cond_1
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_2

    .line 67
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 68
    shr-int/lit8 v0, p1, 0x7

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 69
    :cond_2
    const/high16 v0, 0x200000

    if-ge p1, v0, :cond_3

    .line 70
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 71
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 72
    shr-int/lit8 v0, p1, 0xe

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 73
    :cond_3
    const/high16 v0, 0x10000000

    if-ge p1, v0, :cond_4

    .line 74
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 75
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 76
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 77
    shr-int/lit8 v0, p1, 0x15

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0

    .line 79
    :cond_4
    or-int/lit16 v0, p1, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 80
    shr-int/lit8 v0, p1, 0x7

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 81
    shr-int/lit8 v0, p1, 0xe

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 82
    shr-int/lit8 v0, p1, 0x15

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 83
    shr-int/lit8 v0, p1, 0x1c

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    goto :goto_0
.end method

.method public static b(Ljava/io/DataInput;)I
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 93
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    xor-int/2addr v0, v1

    return v0
.end method
