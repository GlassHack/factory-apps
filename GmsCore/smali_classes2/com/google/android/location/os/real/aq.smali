.class public final Lcom/google/android/location/os/real/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:I

.field private final f:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/io/File;)V
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/location/os/real/aq;->a:Landroid/content/Context;

    .line 46
    iput-wide p2, p0, Lcom/google/android/location/os/real/aq;->b:J

    .line 47
    iput-object p4, p0, Lcom/google/android/location/os/real/aq;->c:Ljava/io/File;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/os/real/aq;->d:I

    .line 49
    iput v2, p0, Lcom/google/android/location/os/real/aq;->e:I

    .line 50
    invoke-direct {p0}, Lcom/google/android/location/os/real/aq;->e()[B

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eq v1, v2, :cond_1

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/os/real/aq;->d()[B

    move-result-object v0

    .line 54
    :cond_1
    iput-object v0, p0, Lcom/google/android/location/os/real/aq;->f:[B

    .line 55
    return-void
.end method

.method private d()[B
    .locals 6

    .prologue
    .line 116
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 117
    iget v1, p0, Lcom/google/android/location/os/real/aq;->e:I

    new-array v2, v1, [B

    .line 118
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 119
    const/4 v1, 0x0

    .line 121
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/google/android/location/os/real/aq;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    iget v1, p0, Lcom/google/android/location/os/real/aq;->d:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 131
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "RealEncryption"

    const-string v3, "Can not open key file."

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "RealEncryption"

    const-string v3, "Failed to write key."

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 127
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 125
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private e()[B
    .locals 6

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/google/android/location/os/real/aq;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 145
    iget v1, p0, Lcom/google/android/location/os/real/aq;->e:I

    new-array v1, v1, [B

    .line 147
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_1

    .line 148
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "RealEncryption"

    const-string v3, "Can not open key file."

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 157
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 155
    :cond_1
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 153
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_3
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "RealEncryption"

    const-string v3, "Failed to read from key file."

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 153
    :catch_2
    move-exception v1

    goto :goto_3

    .line 151
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/os/real/aq;->b()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljavax/crypto/SecretKey;
    .locals 11

    .prologue
    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v5, 0x0

    const-wide/16 v6, 0xff

    .line 59
    iget-wide v0, p0, Lcom/google/android/location/os/real/aq;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no android ID; can\'t access encrypted cache"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v10

    const/16 v1, 0x19

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x30

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x28

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/location/os/real/aq;->b:J

    ushr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final c()[B
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/os/real/aq;->f:[B

    iget-object v1, p0, Lcom/google/android/location/os/real/aq;->f:[B

    array-length v1, v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/location/p/h;->a([BII)[B

    move-result-object v0

    return-object v0
.end method
