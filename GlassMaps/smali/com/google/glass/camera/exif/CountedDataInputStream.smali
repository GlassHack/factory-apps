.class Lcom/google/glass/camera/exif/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/camera/exif/CountedDataInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/camera/exif/CountedDataInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteArray:[B

    .line 33
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getReadByteCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 60
    iget v2, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    .line 61
    return v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 46
    iget v2, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    .line 47
    return v1

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 53
    iget v2, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    if-ltz v1, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    .line 54
    return v1

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readInt()I
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 111
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 121
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 122
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readOrThrow([B)V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 89
    return-void
.end method

.method public readOrThrow([BII)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/glass/camera/exif/CountedDataInputStream;->read([BII)I

    move-result v0

    .line 84
    if-eq v0, p3, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method public readShort()S
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([BII)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-array v0, p1, [B

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 128
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-array v0, p1, [B

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readOrThrow([B)V

    .line 134
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public readUnsignedInt()J
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 93
    return-void
.end method

.method public skip(J)J
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 67
    iget v2, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    .line 68
    return-wide v0
.end method

.method public skipOrThrow(J)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public skipTo(J)V
    .locals 4

    .prologue
    .line 76
    iget v0, p0, Lcom/google/glass/camera/exif/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    .line 77
    sub-long v0, p1, v0

    .line 78
    sget-boolean v2, Lcom/google/glass/camera/exif/CountedDataInputStream;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/exif/CountedDataInputStream;->skipOrThrow(J)V

    .line 80
    return-void
.end method
