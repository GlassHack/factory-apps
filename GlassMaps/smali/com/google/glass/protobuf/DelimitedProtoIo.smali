.class public Lcom/google/glass/protobuf/DelimitedProtoIo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computePreferredBufferSize(I)I
    .locals 1

    .prologue
    const/16 v0, 0x1000

    .line 96
    if-le p0, v0, :cond_0

    move p0, v0

    .line 99
    :cond_0
    return p0
.end method

.method private static computeRawVarint32Size(I)I
    .locals 1

    .prologue
    .line 73
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 76
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 80
    const/4 v0, 0x3

    goto :goto_0

    .line 82
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    .line 83
    const/4 v0, 0x4

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 48
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 49
    if-ne v0, v4, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-static {v0, p1}, Lcom/google/glass/protobuf/DelimitedProtoIo;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1

    .line 54
    new-array v2, v1, [B

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-ge v0, v1, :cond_2

    .line 57
    sub-int v3, v1, v0

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 58
    if-ne v3, v4, :cond_1

    .line 59
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 61
    :cond_1
    add-int/2addr v0, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-static {p0, v2}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    goto :goto_0
.end method

.method private static readRawVarint32(ILjava/io/InputStream;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 124
    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return p0

    .line 128
    :cond_1
    and-int/lit8 p0, p0, 0x7f

    .line 129
    const/4 v0, 0x7

    .line 130
    :goto_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    .line 131
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 132
    if-ne v1, v3, :cond_2

    .line 133
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 135
    :cond_2
    and-int/lit8 v2, v1, 0x7f

    shl-int/2addr v2, v0

    or-int/2addr p0, v2

    .line 136
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x7

    goto :goto_1

    .line 141
    :cond_3
    add-int/lit8 v0, v0, 0x7

    :cond_4
    const/16 v1, 0x40

    if-ge v0, v1, :cond_6

    .line 142
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 143
    if-ne v1, v3, :cond_5

    .line 144
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 146
    :cond_5
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_3

    goto :goto_0

    .line 150
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public static writeDelimitedTo(Lcom/google/protobuf/nano/MessageNano;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    .line 29
    invoke-static {v0}, Lcom/google/glass/protobuf/DelimitedProtoIo;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/google/glass/protobuf/DelimitedProtoIo;->computePreferredBufferSize(I)I

    move-result v1

    .line 30
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 31
    invoke-static {v0, v2}, Lcom/google/glass/protobuf/DelimitedProtoIo;->writeRawVarint32(ILjava/io/OutputStream;)V

    .line 32
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 33
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 34
    return-void
.end method

.method private static writeRawVarint32(ILjava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 108
    :goto_0
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    return-void

    .line 112
    :cond_0
    and-int/lit8 v0, p0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 113
    ushr-int/lit8 p0, p0, 0x7

    goto :goto_0
.end method
