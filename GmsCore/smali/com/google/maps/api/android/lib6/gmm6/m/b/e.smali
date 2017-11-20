.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private final b:I

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

.field private final d:Lcom/google/g/a/d;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/google/g/a/d;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->b:I

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->d:Lcom/google/g/a/d;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->d:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;-><init>(Ljava/io/File;)V

    :try_start_0
    const-string v0, "r"

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->d:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->e:Z

    :cond_0
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "r"

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->b:I

    const/4 v2, 0x0

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a:Ljava/util/Locale;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DiskResourceCache"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Lcom/google/maps/api/android/lib6/gmm6/m/b/e;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;-><init>(Ljava/io/File;Lcom/google/g/a/d;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/d/a;
    .locals 8

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(J)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v5, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c([BI)J

    move-result-wide v2

    new-instance v4, Lcom/google/g/a/b/b/f;

    sget-object v5, Lcom/google/n/c/a/a/ac;->b:Lcom/google/g/a/b/b/h;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    const/16 v6, 0x9

    array-length v7, v1

    add-int/lit8 v7, v7, -0x9

    invoke-direct {v5, v1, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/f;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x2

    :try_start_3
    invoke-virtual {v4, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->c:Z

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->a(Lcom/google/g/a/b/b/f;)Z

    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/d/a;->g:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILjava/util/Locale;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DiskResourceCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Clearing cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/g/a/b/b/f;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, 0x9

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a([BIJ)V

    const/4 v2, 0x0

    const/16 v3, 0x9

    array-length v5, v0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(J[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/e;->c:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/util/Collection;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "DiskResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error inserting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
