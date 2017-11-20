.class public final Lcom/google/android/location/f/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/g/a/b/b/a;


# instance fields
.field final b:Lcom/google/android/location/k/b;

.field final c:Lcom/google/android/location/k/e;

.field volatile d:Lcom/google/g/a/b/b/a;

.field volatile e:J

.field private final f:Lcom/google/android/location/p/e;

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->aC:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    sput-object v0, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/p/e;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    iput-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/f/ag;->e:J

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    .line 79
    iput-object p2, p0, Lcom/google/android/location/f/ag;->c:Lcom/google/android/location/k/e;

    .line 80
    iput-object p3, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    .line 81
    return-void
.end method

.method private static a(Lcom/google/android/location/k/e;)Ljava/io/File;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-interface {p0}, Lcom/google/android/location/k/e;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_params"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 398
    if-eqz p0, :cond_0

    .line 400
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 306
    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/google/g/a/b/b/a;->b(I)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/g/a/b/b/a;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 157
    sget-object v1, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    if-ne p1, v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 161
    add-long/2addr v2, p2

    iget-object v1, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private w()Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    sget-object v2, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    iget-wide v2, p0, Lcom/google/android/location/f/ag;->e:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/location/f/ag;->a(Lcom/google/g/a/b/b/a;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->x()V

    .line 390
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    return-object v0

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized x()V
    .locals 6

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    .line 432
    sget-object v2, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    .line 433
    sget-object v3, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    iput-object v3, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    .line 434
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/google/android/location/f/ag;->e:J

    .line 435
    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    invoke-interface {v0, p0}, Lcom/google/android/location/p/e;->a(Ljava/lang/Object;)V

    .line 438
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 430
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 84
    iget-object v0, p0, Lcom/google/android/location/f/ag;->c:Lcom/google/android/location/k/e;

    invoke-static {v0}, Lcom/google/android/location/f/ag;->a(Lcom/google/android/location/k/e;)Ljava/io/File;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/location/f/ag;->x()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "NlpParametersState"

    const-string v1, "Using NlpParameterId: %d."

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    invoke-virtual {v4, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    return-void

    .line 88
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v0

    iget-object v5, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    invoke-interface {v5}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    sub-long v6, v0, v6

    cmp-long v5, v2, v0

    if-lez v5, :cond_4

    :goto_1
    sub-long/2addr v0, v6

    sget-object v2, Lcom/google/android/location/n/a;->aC:Lcom/google/g/a/b/b/c;

    invoke-static {v4, v2}, Lcom/google/android/location/p/h;->a(Ljava/io/InputStream;Lcom/google/g/a/b/b/c;)Lcom/google/g/a/b/b/a;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/location/f/ag;->a(Lcom/google/g/a/b/b/a;J)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v2, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    iput-wide v0, p0, Lcom/google/android/location/f/ag;->e:J

    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    sget-object v1, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    invoke-interface {v0, p0}, Lcom/google/android/location/p/e;->a(Ljava/lang/Object;)V

    :cond_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-static {v4}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/location/f/ag;->x()V

    goto :goto_0

    :cond_4
    move-wide v0, v2

    .line 88
    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception v0

    :try_start_7
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->x()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v4}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :cond_5
    :try_start_9
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->x()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_a
    invoke-static {v4}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 9

    .prologue
    .line 408
    iget-object v2, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 409
    if-eqz p1, :cond_2

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v0, v0

    .line 413
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v3

    int-to-long v4, v3

    .line 414
    iput-object p1, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    .line 415
    iget-object v3, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    invoke-interface {v3}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/location/f/ag;->e:J

    .line 416
    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    .line 419
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NlpParametersState"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Updating NlpParameters. New version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/f/ag;->c:Lcom/google/android/location/k/e;

    invoke-static {v0}, Lcom/google/android/location/f/ag;->a(Lcom/google/android/location/k/e;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    if-ne v1, v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V

    .line 421
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/google/android/location/f/ag;->f:Lcom/google/android/location/p/e;

    invoke-interface {v0, p0}, Lcom/google/android/location/p/e;->a(Ljava/lang/Object;)V

    .line 426
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 420
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_4
    iget-object v1, p0, Lcom/google/android/location/f/ag;->c:Lcom/google/android/location/k/e;

    invoke-interface {v1, v3}, Lcom/google/android/location/k/e;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x2

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v3, p0, Lcom/google/android/location/f/ag;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-wide v4, p0, Lcom/google/android/location/f/ag;->e:J

    iget-object v0, p0, Lcom/google/android/location/f/ag;->b:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/google/android/location/f/ag;->d:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->f()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_7
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_5

    const-string v1, "NlpParametersState"

    const-string v3, "Failed to write parameter state."

    invoke-static {v1, v3}, Lcom/google/android/location/p/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    :try_start_8
    invoke-static {v0}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 426
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 420
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    :try_start_9
    invoke-static {v1}, Lcom/google/android/location/f/ag;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/f/ag;->a:Lcom/google/g/a/b/b/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/location/f/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/location/f/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/location/f/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/location/f/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/location/f/ag;->a(I)Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final l()I
    .locals 4

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final m()I
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 2

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    return v0
.end method

.method public final q()Lcom/google/android/location/f/ah;
    .locals 10

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 326
    new-instance v1, Lcom/google/android/location/f/ah;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x23

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ah;-><init>(JJJ)V

    return-object v1
.end method

.method public final r()Lcom/google/android/location/f/ah;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 337
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 338
    new-instance v1, Lcom/google/android/location/f/ah;

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v8

    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v8

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ah;-><init>(JJJ)V

    return-object v1
.end method

.method public final s()Lcom/google/android/location/f/ah;
    .locals 8

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/google/android/location/f/ah;

    const/16 v2, 0x17

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x24

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ah;-><init>(JJJ)V

    return-object v1
.end method

.method public final t()Lcom/google/android/location/f/ah;
    .locals 8

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/google/android/location/f/ah;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const/16 v6, 0x27

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/f/ah;-><init>(JJJ)V

    return-object v1
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/android/location/f/ag;->w()Lcom/google/g/a/b/b/a;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method
