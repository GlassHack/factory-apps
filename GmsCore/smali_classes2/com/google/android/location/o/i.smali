.class public abstract Lcom/google/android/location/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:[B

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/location/o/i;->b:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/android/location/o/i;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private c()[B
    .locals 7

    .prologue
    .line 80
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 81
    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 82
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/google/android/location/o/i;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/location/o/i;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 88
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 96
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_2
    const-string v1, "Cannot open key file."

    invoke-virtual {p0, v1}, Lcom/google/android/location/o/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string v0, "Failed to write key."

    invoke-virtual {p0, v0}, Lcom/google/android/location/o/i;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 92
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_2

    .line 90
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private d()[B
    .locals 6

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/google/android/location/o/i;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/location/o/i;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 109
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 111
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 112
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    const-string v1, "Cannot open key file."

    invoke-virtual {p0, v1}, Lcom/google/android/location/o/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 121
    :goto_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 117
    :catch_1
    move-exception v0

    :goto_3
    :try_start_3
    const-string v0, "Failed to read from key file."

    invoke-virtual {p0, v0}, Lcom/google/android/location/o/i;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

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

    .line 117
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_3

    .line 115
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/location/o/i;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    .line 48
    iget-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    const-string v0, "Key not found, creating a new one."

    invoke-virtual {p0, v0}, Lcom/google/android/location/o/i;->a(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/location/o/i;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    .line 52
    :cond_1
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public final b()Lcom/google/android/location/f/a;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    const-string v1, "createCipher needs to be called after createOrLoadKey"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/o/i;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    return-object v0
.end method
