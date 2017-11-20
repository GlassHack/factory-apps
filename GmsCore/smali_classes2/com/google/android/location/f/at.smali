.class public final Lcom/google/android/location/f/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/location/f/av;


# instance fields
.field private final b:Lcom/google/android/location/k/e;

.field private final c:Ljavax/crypto/SecretKey;

.field private final d:Lcom/google/android/location/f/a;

.field private final e:Ljava/io/File;

.field private final f:I

.field private final g:I

.field private volatile h:I

.field private final i:Lcom/google/g/a/b/b/c;

.field private final j:Lcom/google/android/location/f/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/location/f/au;

    invoke-direct {v0}, Lcom/google/android/location/f/au;-><init>()V

    sput-object v0, Lcom/google/android/location/f/at;->a:Lcom/google/android/location/f/av;

    return-void
.end method

.method public constructor <init>(ILjavax/crypto/SecretKey;I[BLcom/google/g/a/b/b/c;Ljava/io/File;Lcom/google/android/location/f/av;Lcom/google/android/location/k/e;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/f/at;->h:I

    .line 80
    iput-object p5, p0, Lcom/google/android/location/f/at;->i:Lcom/google/g/a/b/b/c;

    .line 81
    iput-object p8, p0, Lcom/google/android/location/f/at;->b:Lcom/google/android/location/k/e;

    .line 82
    iput-object p6, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    .line 83
    iput p1, p0, Lcom/google/android/location/f/at;->f:I

    .line 84
    iput p3, p0, Lcom/google/android/location/f/at;->g:I

    .line 85
    iput-object p2, p0, Lcom/google/android/location/f/at;->c:Ljavax/crypto/SecretKey;

    .line 86
    if-eqz p4, :cond_0

    .line 87
    invoke-static {p4, v1}, Lcom/google/android/location/f/a;->a([BLcom/google/android/location/p/a/c;)Lcom/google/android/location/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;

    .line 91
    :goto_0
    iput-object p7, p0, Lcom/google/android/location/f/at;->j:Lcom/google/android/location/f/av;

    .line 92
    return-void

    .line 89
    :cond_0
    iput-object v1, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 118
    .line 121
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/f/at;->h:I

    .line 123
    iget v0, p0, Lcom/google/android/location/f/at;->h:I

    iget v3, p0, Lcom/google/android/location/f/at;->f:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/location/f/at;->h:I

    iget v3, p0, Lcom/google/android/location/f/at;->g:I

    if-eq v0, v3, :cond_0

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid version, desired = %d or %d, actual = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/location/f/at;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/google/android/location/f/at;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/google/android/location/f/at;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    .line 127
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/google/android/location/f/at;->h:I

    iget v3, p0, Lcom/google/android/location/f/at;->f:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/location/f/at;->c:Ljavax/crypto/SecretKey;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v0}, Lcom/google/android/location/f/j;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/f/at;->i:Lcom/google/g/a/b/b/c;

    invoke-static {v2, v0}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 129
    iget-object v3, p0, Lcom/google/android/location/f/at;->j:Lcom/google/android/location/f/av;

    invoke-interface {v3, v0}, Lcom/google/android/location/f/av;->a(Lcom/google/g/a/b/b/a;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Invalid file format."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v3, "No cipher key specified."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;

    invoke-virtual {v0, v1}, Lcom/google/android/location/f/a;->a(Ljava/io/DataInputStream;)Lcom/google/android/location/f/ai;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->b:Ljava/lang/Object;

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_1

    .line 134
    :cond_3
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 135
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 134
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private a(Lcom/google/g/a/b/b/a;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 214
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    :try_start_1
    iget v0, p0, Lcom/google/android/location/f/at;->g:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 217
    iget-object v0, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 220
    :try_start_2
    invoke-virtual {p1}, Lcom/google/g/a/b/b/a;->f()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 228
    :try_start_3
    iget-object v2, p0, Lcom/google/android/location/f/at;->d:Lcom/google/android/location/f/a;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/location/f/a;->a(Ljava/io/DataOutputStream;[B)V

    .line 232
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 235
    return-void

    .line 225
    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 226
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Runtime while writing protobuf to bytes."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    .line 230
    :cond_0
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "No cipher specified."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 234
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/g/a/b/b/a;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/f/at;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final a([B)V
    .locals 3

    .prologue
    .line 172
    const-string v0, "output buffer can not be null."

    invoke-static {p1, v0}, Lcom/google/android/location/p/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v1, 0x0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/at;->b:Lcom/google/android/location/k/e;

    iget-object v2, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-interface {v0, v2}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 179
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    invoke-static {v2}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/location/p/h;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)[B
    .locals 1

    .prologue
    .line 161
    const-string v0, "protoBuf can not be null."

    invoke-static {p1, v0}, Lcom/google/android/location/p/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/google/android/location/f/at;->a(Lcom/google/g/a/b/b/a;Ljava/io/OutputStream;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/location/f/at;->h:I

    return v0
.end method

.method public final b(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 198
    const-string v0, "protoBuf can not be null."

    invoke-static {p1, v0}, Lcom/google/android/location/p/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/at;->b:Lcom/google/android/location/k/e;

    iget-object v1, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    .line 203
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/location/f/at;->a(Lcom/google/g/a/b/b/a;Ljava/io/OutputStream;)V

    .line 204
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimpleProtoBufStore loading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/f/at;->i:Lcom/google/g/a/b/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/f/at;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
