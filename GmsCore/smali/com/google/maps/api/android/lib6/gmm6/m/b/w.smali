.class public final Lcom/google/maps/api/android/lib6/gmm6/m/b/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/m/b/f;


# static fields
.field private static final a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

.field private static final b:[B


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

.field private final f:Ljava/util/HashMap;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

.field private final h:I

.field private final i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field private j:I

.field private k:Lcom/google/g/a/d;

.field private l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/b;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/b;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/m/b/ag;Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->j:I

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->d:I

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->e:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/ad;->f()I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    const/16 v1, 0x100

    mul-int/lit8 v0, v0, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->h:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->h:I

    invoke-static {v0}, Lcom/google/c/c/gc;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eqz p5, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-direct {v0, v1, p5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/b/g;)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    :cond_0
    return-void
.end method

.method private a(ILjava/util/Locale;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(ILjava/util/Locale;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b()V

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;

    invoke-direct {v4, p1}, Lcom/google/maps/api/android/lib6/gmm6/e/b/b;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-static {v0, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    :goto_1
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_1
    move v0, v6

    :goto_2
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->d:I

    const/4 v2, -0x1

    new-instance v3, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/lang/String;IILjava/util/Locale;Lcom/google/maps/api/android/lib6/gmm6/e/b/b;Lcom/google/maps/api/android/lib6/gmm6/m/b/r;)Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/b/c;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/c;-><init>()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/b/c;->writeLong(J)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/c;->a()[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disk_creation_time_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/g/a/b/x;->a([BLjava/lang/String;)I

    return-void
.end method

.method private g()J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disk_creation_time_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/g/a/b/x;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v3, Lcom/google/g/a/b/c/a;

    invoke-direct {v3, v2}, Lcom/google/g/a/b/c/a;-><init>([B)V

    :try_start_0
    invoke-virtual {v3}, Lcom/google/g/a/b/c/a;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->c()Lcom/google/g/a/b/x;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disk_creation_time_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t store unencrypted tiles into SD cache."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;[B)V
    .locals 11

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/e;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert a MutableVectorTile into SD cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v1, 0x15

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v9

    array-length v0, p3

    if-lez v0, :cond_9

    instance-of v0, p2, Lcom/google/maps/api/android/lib6/gmm6/l/co;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/co;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/co;->m()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_7

    move-wide v2, v4

    :goto_0
    move-object v0, p2

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/co;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/co;->o()J

    move-result-wide v0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-gez v6, :cond_6

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x18

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    if-eqz v0, :cond_5

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v5

    :goto_3
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget-object v2, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    :goto_4
    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;-><init>(JLjava/lang/String;I[BLcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->j:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->h:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->j:I

    :cond_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    :try_start_4
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    throw v0

    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_5
    move v5, v8

    goto :goto_3

    :cond_6
    move-wide v4, v0

    goto/16 :goto_1

    :cond_7
    move-wide v2, v0

    goto/16 :goto_0

    :cond_8
    move-wide v4, v6

    move-wide v2, v6

    goto/16 :goto_1

    :cond_9
    move-object v6, p3

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;I)V
    .locals 10

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_1

    new-instance v8, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    invoke-direct {v8, v1, p2}, Lcom/google/maps/api/android/lib6/gmm6/m/a/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/a/d;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :goto_0
    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    invoke-static {v5, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v5

    iget-object v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    invoke-direct/range {v1 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;-><init>(JLjava/lang/String;I[BLcom/google/maps/api/android/lib6/gmm6/l/ae;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    monitor-exit v9

    return-void

    :cond_1
    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget-wide v3, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    invoke-static {v0, p3}, Lcom/google/maps/api/android/lib6/gmm6/m/u;->a(II)I

    move-result v6

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;-><init>(JLjava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    move-object v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v4

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;-><init>(JLjava/lang/String;ILcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/m/a/d;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_4
    move-object v8, p2

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ae;)Z
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/io/File;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->a()V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->b(Ljava/io/File;)Z

    move-result v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Locale;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a(ILjava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)[B
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;)[B

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    array-length v0, v1

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    array-length v0, v1

    sub-int v4, v0, v3

    if-ltz v4, :cond_5

    const/16 v0, 0x18

    if-le v3, v0, :cond_6

    :cond_5
    const-string v0, "SDCardTileCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid tile data length["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    new-array v0, v4, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    const-string v2, "SDCardTileCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid tile data in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)V
    .locals 2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->b:[B

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ae;[B)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->b(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a()I

    move-result v0

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 14

    const-wide/16 v10, -0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    monitor-exit v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-static {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v8

    goto :goto_0

    :cond_3
    :try_start_1
    array-length v0, v2

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v4, v12

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    add-long/2addr v4, v12

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move-wide v4, v6

    :cond_5
    const/16 v0, 0x10

    if-le v3, v0, :cond_7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    cmp-long v9, v0, v10

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v0, v10

    iget-object v9, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v0, v10

    cmp-long v9, v0, v6

    if-gez v9, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->e:Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/m/b/ag;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BIJJ)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not unpack tile in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto/16 :goto_0

    :cond_6
    move-wide v6, v0

    goto :goto_1

    :cond_7
    move-wide v6, v10

    goto :goto_1
.end method

.method public final d()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->c()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SDCardTileCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shutDown(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final z_()V
    .locals 14

    const/4 v13, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->k:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    :cond_1
    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->a:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-wide v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iget v11, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    iget-object v12, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->e:[B

    invoke-static {v8, v9, v10, v11, v12}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;I[B)Lcom/google/maps/api/android/lib6/gmm6/m/b/k;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    iget-object v9, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    iget-object v8, v8, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->c:Ljava/util/Map;

    invoke-interface {v9}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->f:Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    invoke-static {v8, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->j:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(Ljava/util/Collection;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-ne v0, v13, :cond_9

    move v0, v3

    :goto_1
    move v5, v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    invoke-interface {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ae;->a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ae;

    invoke-interface {v1, v2, v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "SDCardTileCache"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;

    iget v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    if-lez v1, :cond_8

    :try_start_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->g:Lcom/google/maps/api/android/lib6/gmm6/m/b/h;

    iget-wide v6, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->b:J

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->c:Ljava/lang/String;

    iget v8, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->d:I

    invoke-virtual {v1, v6, v7, v5, v8}, Lcom/google/maps/api/android/lib6/gmm6/m/b/h;->a(JLjava/lang/String;I)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    if-ne v1, v13, :cond_8

    const/4 v1, 0x2

    :goto_5
    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->h:Lcom/google/maps/api/android/lib6/gmm6/m/a/d;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/af;->g:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/m/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;ILcom/google/maps/api/android/lib6/gmm6/l/ae;)V

    goto :goto_4

    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b:Ljava/util/Queue;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/m/b/aa;

    invoke-direct {v2, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/m/b/aa;-><init>(Lcom/google/maps/api/android/lib6/gmm6/m/b/x;B)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/b/w;->l:Lcom/google/maps/api/android/lib6/gmm6/m/b/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/b/x;->b()V

    :cond_7
    return-void

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    move v0, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
