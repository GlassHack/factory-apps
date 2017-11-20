.class public Lcom/google/android/gms/common/security/c;
.super Ljava/security/SecureRandomSpi;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/File;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/io/DataInputStream;

.field private static d:Ljava/io/OutputStream;


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/security/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method private static a()Ljava/io/DataInputStream;
    .locals 5

    .prologue
    .line 262
    sget-object v1, Lcom/google/android/gms/common/security/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/security/c;->c:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 269
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v0, Lcom/google/android/gms/common/security/c;->c:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_0
    :try_start_2
    sget-object v0, Lcom/google/android/gms/common/security/c;->c:Ljava/io/DataInputStream;

    monitor-exit v1

    return-object v0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 281
    sget-object v1, Lcom/google/android/gms/common/security/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/security/c;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/google/android/gms/common/security/c;->d:Ljava/io/OutputStream;

    .line 285
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/security/c;->d:Ljava/io/OutputStream;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1

    .prologue
    .line 256
    new-array v0, p1, [B

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/security/c;->engineNextBytes([B)V

    .line 258
    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 4

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/google/android/gms/common/security/c;->e:Z

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/google/android/gms/common/security/b;->b()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/security/c;->engineSetSeed([B)V

    .line 242
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/security/c;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/security/c;->a()Ljava/io/DataInputStream;

    move-result-object v2

    .line 244
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    monitor-enter v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 246
    :try_start_3
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 244
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 247
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method protected engineSetSeed([B)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 218
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/security/c;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/security/c;->b()Ljava/io/OutputStream;

    move-result-object v0

    .line 220
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    iput-boolean v3, p0, Lcom/google/android/gms/common/security/c;->e:Z

    .line 230
    :goto_0
    return-void

    .line 220
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    :catch_0
    move-exception v0

    :try_start_4
    const-class v0, Lcom/google/android/gms/common/security/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to mix seed into "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/common/security/c;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    iput-boolean v3, p0, Lcom/google/android/gms/common/security/c;->e:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Lcom/google/android/gms/common/security/c;->e:Z

    throw v0
.end method
