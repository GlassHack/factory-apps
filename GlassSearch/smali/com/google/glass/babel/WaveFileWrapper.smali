.class public Lcom/google/glass/babel/WaveFileWrapper;
.super Ljava/lang/Object;
.source "WaveFileWrapper.java"


# static fields
.field private static final INTEGER_SPACE_IN_BYTES:I = 0x4

.field private static final PCM_GLASS_SETTINGS:[B

.field private static final PREAMBLE_SIZE:I = 0x24


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/babel/WaveFileWrapper;->PCM_GLASS_SETTINGS:[B

    return-void

    :array_0
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
        0x66t
        0x6dt
        0x74t
        0x20t
        0x10t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x40t
        0x1ft
        0x0t
        0x0t
        -0x80t
        0x3et
        0x0t
        0x0t
        0x2t
        0x0t
        0x10t
        0x0t
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertIntegerToLittleEndian(I)[B
    .locals 2
    .param p1, "integer"    # I

    .prologue
    .line 90
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 91
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public wrap([B)[B
    .locals 8
    .param p1, "pcmData"    # [B

    .prologue
    .line 68
    array-length v1, p1

    .line 69
    .local v1, "dataOnlyLength":I
    add-int/lit8 v3, v1, 0x24

    .line 70
    .local v3, "fullLength":I
    const-string v6, "RIFF"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 72
    .local v0, "chunkId":[B
    array-length v6, v0

    add-int/lit8 v6, v6, 0x4

    add-int v5, v6, v3

    .line 74
    .local v5, "outputStreamSize":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .local v4, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 77
    invoke-direct {p0, v3}, Lcom/google/glass/babel/WaveFileWrapper;->convertIntegerToLittleEndian(I)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 78
    sget-object v6, Lcom/google/glass/babel/WaveFileWrapper;->PCM_GLASS_SETTINGS:[B

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    invoke-direct {p0, v1}, Lcom/google/glass/babel/WaveFileWrapper;->convertIntegerToLittleEndian(I)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 80
    invoke-virtual {v4, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 81
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to generate WAV header"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method
