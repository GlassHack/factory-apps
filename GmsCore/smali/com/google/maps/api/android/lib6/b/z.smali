.class public Lcom/google/maps/api/android/lib6/b/z;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashSet;

.field private static b:Lcom/google/g/a/d;

.field private static c:Z

.field private static d:Z

.field private static e:Lcom/google/maps/api/android/lib6/b/ad;

.field private static f:Lcom/google/maps/api/android/lib6/b/z;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private volatile h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/g/a/d;

    invoke-direct {v0}, Lcom/google/g/a/d;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/z;->b:Lcom/google/g/a/d;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Lcom/google/maps/api/android/lib6/b/z;->c:Z

    sput-boolean v2, Lcom/google/maps/api/android/lib6/b/z;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/z;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    return-void
.end method

.method static a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/g/a/b/b/f;

    sget-object v3, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v4, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v4}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v0

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_1
    return-object v2
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    aget-object v2, p0, v0

    const-string v3, "|"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->b:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/maps/api/android/lib6/b/aa;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v2

    move v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/maps/api/android/lib6/b/aa;-><init>(Lcom/google/g/a/d/g;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/b/aa;->d()V

    goto :goto_0
.end method

.method static synthetic a(ILjava/lang/String;Ljava/lang/String;Lcom/google/g/a/b/b/f;JZ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/maps/api/android/lib6/b/z;->b(ILjava/lang/String;Ljava/lang/String;Lcom/google/g/a/b/b/f;JZ)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/maps/api/android/lib6/b/ad;)V
    .locals 2

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/maps/api/android/lib6/b/z;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/b/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/z;->i()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x4e

    invoke-static {v0, p0, p1}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/google/g/a/b/b/f;)[B
    .locals 12

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v7

    new-instance v8, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v8, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v2

    invoke-virtual {v8, v0, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v6}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v2

    sub-long v4, v2, v4

    if-lez v6, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-ltz v1, :cond_1

    const-wide/32 v10, 0x63ff9c

    cmp-long v1, v4, v10

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/google/g/a/b/b/f;->e(II)V

    const/4 v1, 0x2

    const-wide/16 v10, 0x64

    div-long/2addr v4, v10

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v8, v1, v0}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    move-wide v0, v2

    :goto_1
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v4, v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v8}, Lcom/google/g/a/b/b/f;->d()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_2

    :cond_3
    move-wide v0, v4

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/maps/api/android/lib6/b/z;)I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    return v0
.end method

.method private static b(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v4, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/g/a/b/b/f;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4, v2}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_2
    return-object v1
.end method

.method private static declared-synchronized b(ILjava/lang/String;Ljava/lang/String;Lcom/google/g/a/b/b/f;JZ)V
    .locals 6

    const/4 v4, 0x1

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    const-string v0, "USER_EVENTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event: type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->j()V

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/g/a/b/b/f;

    sget-object v3, Lcom/google/n/c/a/a/f;->b:Lcom/google/g/a/b/b/h;

    invoke-direct {v2, v3}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p4, p5}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p6}, Lcom/google/g/a/b/b/f;->a(IZ)Lcom/google/g/a/b/b/f;

    if-eqz p3, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/b/ad;->a(Lcom/google/g/a/b/b/f;)V

    invoke-virtual {v0}, Lcom/google/g/a/b/b/f;->c()I

    move-result v0

    const/16 v2, 0x4b0

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->g()Lcom/google/maps/api/android/lib6/b/z;

    move-result-object v0

    const-class v2, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->g()Lcom/google/maps/api/android/lib6/b/z;

    move-result-object v0

    iget v0, v0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    if-le v0, v4, :cond_2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->g()Lcom/google/maps/api/android/lib6/b/z;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/z;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    :try_start_3
    iget v3, v0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    iget v3, v0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    if-ne v3, v4, :cond_4

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/z;->i()V

    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/g/a/b/b/f;->c()I

    move-result v0

    add-int/lit16 v1, v0, -0x320

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/g/a/b/b/f;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-gtz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/google/maps/api/android/lib6/b/z;->a(Lcom/google/g/a/b/b/f;I)Lcom/google/g/a/b/b/f;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d()Z
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Lcom/google/maps/api/android/lib6/b/ad;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    return-object v0
.end method

.method private static f()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/google/maps/api/android/lib6/b/z;->d:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g()Lcom/google/maps/api/android/lib6/b/z;
    .locals 2

    sget-object v1, Lcom/google/maps/api/android/lib6/b/z;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->f:Lcom/google/maps/api/android/lib6/b/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/b/z;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/b/z;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/b/z;->f:Lcom/google/maps/api/android/lib6/b/z;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->f:Lcom/google/maps/api/android/lib6/b/z;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h()V
    .locals 4

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/z;->b(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/b/z;->c(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    iget v2, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    :cond_0
    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/b/ad;->a(Lcom/google/g/a/b/b/f;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()V
    .locals 14

    const/4 v3, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/b/ad;->a()Lcom/google/g/a/b/b/f;

    move-result-object v5

    if-eqz v5, :cond_1

    const-class v6, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    monitor-exit v6

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->b:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->a:Ljava/util/HashSet;

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move v0, v1

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v4

    if-ge v0, v4, :cond_5

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    :goto_2
    const/4 v0, 0x3

    invoke-virtual {v5, v0, v8, v9}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    new-instance v7, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v7, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    move v0, v1

    :goto_3
    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    if-ge v0, v2, :cond_7

    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v8

    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v10

    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->b:Lcom/google/g/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    const-wide v12, 0x9a7ec800L

    cmp-long v2, v10, v12

    if-lez v2, :cond_6

    move v2, v3

    :goto_4
    if-nez v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v7, v2, v8}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v4, v1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/f;->e(I)J

    move-result-wide v2

    invoke-virtual {v7, v0, v2, v3}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    :cond_8
    invoke-static {v7}, Lcom/google/maps/api/android/lib6/b/z;->a(Lcom/google/g/a/b/b/f;)[B

    move-result-object v0

    invoke-static {v7}, Lcom/google/maps/api/android/lib6/b/z;->b(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/z;->j()V

    :goto_5
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/b/z;->h:I

    new-instance v1, Lcom/google/maps/api/android/lib6/b/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2, v4}, Lcom/google/maps/api/android/lib6/b/ac;-><init>(Lcom/google/maps/api/android/lib6/b/z;[BZZ)V

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->c(Lcom/google/maps/api/android/lib6/b/g;)V

    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_a
    :try_start_1
    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/b/z;->c(Lcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/maps/api/android/lib6/b/ad;->a(Lcom/google/g/a/b/b/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method private static declared-synchronized j()V
    .locals 3

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/f;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v0, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    sget-object v2, Lcom/google/maps/api/android/lib6/b/z;->e:Lcom/google/maps/api/android/lib6/b/ad;

    invoke-interface {v2, v0}, Lcom/google/maps/api/android/lib6/b/ad;->a(Lcom/google/g/a/b/b/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/4 v2, 0x1

    const-class v1, Lcom/google/maps/api/android/lib6/b/z;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/z;->i:I

    new-instance v0, Lcom/google/maps/api/android/lib6/b/ab;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/y;->a()Lcom/google/g/a/d/g;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/maps/api/android/lib6/b/ab;-><init>(Lcom/google/maps/api/android/lib6/b/z;Lcom/google/g/a/d/g;)V

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/ab;->d()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/z;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
