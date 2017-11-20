.class public final Lcom/google/android/location/o/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/v4/f/c;

.field public final b:I

.field public final c:Lcom/google/android/location/f/a;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/google/android/location/f/a;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/location/o/ae;->b:I

    .line 62
    iput-object p2, p0, Lcom/google/android/location/o/ae;->c:Lcom/google/android/location/f/a;

    .line 63
    new-instance v0, Landroid/support/v4/f/c;

    invoke-direct {v0, p1}, Landroid/support/v4/f/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/location/o/ae;->a:Landroid/support/v4/f/c;

    .line 64
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/google/protobuf/a/f;)Lcom/google/protobuf/a/f;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/location/o/ae;->c:Lcom/google/android/location/f/a;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cipher specified."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 94
    iget v3, p0, Lcom/google/android/location/o/ae;->b:I

    if-eq v0, v3, :cond_1

    .line 95
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid version, desired = %d, actual = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/location/o/ae;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    .line 98
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/o/ae;->c:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    array-length v3, v0

    invoke-virtual {p2, v0, v3}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    return-object p2

    .line 102
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/a/f;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/o/ae;->a:Landroid/support/v4/f/c;

    invoke-virtual {v0}, Landroid/support/v4/f/c;->b()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/location/o/ae;->a(Ljava/io/InputStream;Lcom/google/protobuf/a/f;)Lcom/google/protobuf/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/protobuf/a/f;)V
    .locals 4

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/o/ae;->a:Landroid/support/v4/f/c;

    invoke-virtual {v1}, Landroid/support/v4/f/c;->a()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/android/location/o/ae;->c:Lcom/google/android/location/f/a;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "No cipher specified."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/location/o/ae;->a:Landroid/support/v4/f/c;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/c;->b(Ljava/io/FileOutputStream;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v2, p0, Lcom/google/android/location/o/ae;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Lcom/google/protobuf/a/f;->g()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/o/ae;->c:Lcom/google/android/location/f/a;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    .line 119
    iget-object v1, p0, Lcom/google/android/location/o/ae;->a:Landroid/support/v4/f/c;

    invoke-virtual {v1, v0}, Landroid/support/v4/f/c;->a(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
