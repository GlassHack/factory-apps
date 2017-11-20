.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/g/a/d;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/g/a/b/b/h;

.field private final g:I

.field private final h:J

.field private i:Lcom/google/maps/api/android/lib6/gmm6/m/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/google/g/a/d;Ljava/lang/String;Lcom/google/g/a/b/b/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->d:Lcom/google/g/a/d;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->f:Lcom/google/g/a/b/b/h;

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->g:I

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->h:J

    return-void
.end method

.method private a(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->h:J

    add-long/2addr v0, p1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/fx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->a:Ljava/lang/String;

    const/4 v8, -0x1

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->c:J

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->b:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v3}, Lcom/google/g/a/b/b/f;->a(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-static {v6, v7, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/m/b/a;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized b()Z
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/b;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    if-lez v2, :cond_1

    :try_start_4
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/util/Collection;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :cond_3
    :try_start_9
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/b;

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_4
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/gmm6/m/b/d;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->b:Lcom/google/g/a/b/b/f;

    iget-wide v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;->c:J

    invoke-direct {p0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(J)J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;-><init>(Lcom/google/g/a/b/b/f;J)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    new-instance v4, Lcom/google/g/a/b/b/f;

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->f:Lcom/google/g/a/b/b/h;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;I)I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;

    invoke-direct {p0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a(J)J

    move-result-wide v2

    invoke-direct {v0, v4, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/d;-><init>(Lcom/google/g/a/b/b/f;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/g/a/b/b/f;)V
    .locals 6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x80

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->d:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, p1, p2, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/c;-><init>(Ljava/lang/String;Lcom/google/g/a/b/b/f;J)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->c:Ljava/lang/String;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->g:I

    invoke-direct {v0, v2, v3, p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/b;-><init>(Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/m/b/a;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->i:Lcom/google/maps/api/android/lib6/gmm6/m/b/b;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a()Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILjava/util/Locale;)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/io/File;)Z
    .locals 6

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->c:Ljava/lang/String;

    const/16 v1, 0xffa

    const/4 v2, -0x1

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->a:Ljava/util/Locale;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/util/Locale;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->b:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILjava/util/Locale;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/a;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
