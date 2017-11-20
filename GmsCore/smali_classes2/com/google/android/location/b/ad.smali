.class public final Lcom/google/android/location/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/f/c;

.field final b:I

.field final c:Lcom/google/android/location/f/a;


# direct methods
.method public constructor <init>(ILjava/io/File;Lcom/google/android/location/f/a;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/android/location/b/ad;->b:I

    .line 50
    iput-object p3, p0, Lcom/google/android/location/b/ad;->c:Lcom/google/android/location/f/a;

    .line 51
    new-instance v0, Landroid/support/v4/f/c;

    invoke-direct {v0, p2}, Landroid/support/v4/f/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/google/android/location/b/ad;->a:Landroid/support/v4/f/c;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/location/b/ad;->c:Lcom/google/android/location/f/a;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No cipher specified."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 79
    iget v3, p0, Lcom/google/android/location/b/ad;->b:I

    if-eq v0, v3, :cond_1

    .line 80
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid version, desired = %d, actual = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/location/b/ad;->b:I

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

    .line 86
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    .line 83
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/location/b/ad;->c:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    .line 84
    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 87
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 86
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
