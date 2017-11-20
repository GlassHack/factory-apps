.class final Lcom/google/android/location/p/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field private a:[B

.field private b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object v0, p0, Lcom/google/android/location/p/d;->a:[B

    .line 185
    iput-object v0, p0, Lcom/google/android/location/p/d;->b:[B

    .line 193
    iput-object p1, p0, Lcom/google/android/location/p/d;->a:[B

    .line 194
    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/p/d;->b:[B

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/location/p/d;->a:[B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p/d;->a:[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/p/d;->b:[B

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p/d;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/google/android/location/p/d;->a:[B

    .line 199
    iput-object v0, p0, Lcom/google/android/location/p/d;->b:[B

    .line 200
    return-void
.end method

.method public final declared-synchronized s_()I
    .locals 1

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/p/d;->d()V

    .line 243
    iget-object v0, p0, Lcom/google/android/location/p/d;->b:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t_()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/p/d;->d()V

    .line 234
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/android/location/p/d;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
