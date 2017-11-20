.class public final Lcom/google/android/location/p/c;
.super Lcom/google/j/b/p;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private b:Lcom/google/j/g;

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/location/p/c;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/j/b/p;-><init>(Ljava/lang/String;I)V

    .line 68
    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/google/android/location/p/c;->b(I)V

    .line 69
    invoke-direct {p0, p2}, Lcom/google/android/location/p/c;->a([B)V

    .line 70
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 253
    if-nez p1, :cond_0

    .line 254
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::object is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-void

    .line 267
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::monitor on ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not held by current thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private declared-synchronized a([B)V
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/location/p/d;

    invoke-direct {v0, p1}, Lcom/google/android/location/p/d;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 146
    const-string v0, "MultipartRequest.generateBlockData(): monitor on \'this\' must be held by the current thread"

    invoke-static {v0, p0}, Lcom/google/android/location/p/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/location/p/c;->n:[B

    if-nez v0, :cond_0

    .line 150
    const-string v0, "MultipartRequest.generatePayloadHeader(): monitor on \'this\' must be held by the current thread"

    invoke-static {v0, p0}, Lcom/google/android/location/p/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/location/p/c;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/location/p/c;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/p/c;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v2, 0x6d72

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v2, "ROOT"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->s_()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->s_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/p/c;->n:[B

    .line 152
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/google/j/b/p;->a()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p/c;->n:[B

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/j/b/p;->a(I)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/p/c;->n:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/android/location/p/c;->l()V

    .line 157
    iget-object v0, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->s_()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    new-instance v0, Lcom/google/g/a/b/n;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/p/c;->n:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lcom/google/android/location/p/c;->a:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 164
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/g/a/b/n;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/location/p/c;->n:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    invoke-interface {v2}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lcom/google/android/location/p/c;->a:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/g/a/b/n;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/android/location/p/c;->l()V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/p/c;->n:[B

    array-length v0, v0

    sget-object v1, Lcom/google/android/location/p/c;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/android/location/p/c;->b:Lcom/google/j/g;

    invoke-interface {v1}, Lcom/google/j/g;->s_()I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_0
    return v0
.end method
