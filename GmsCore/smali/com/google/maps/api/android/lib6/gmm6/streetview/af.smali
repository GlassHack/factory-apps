.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/af;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private a:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->a:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public final readBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->read()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readByte()B
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public final readChar()C
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readDouble()D
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readInt()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readLong()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readShort()S
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readUnsignedByte()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/af;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
