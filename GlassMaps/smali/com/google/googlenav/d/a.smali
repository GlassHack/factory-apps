.class public final Lcom/google/googlenav/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[I

.field static b:[I

.field private static final g:Lcom/google/googlenav/d/d;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/google/googlenav/d/a;->a:[I

    .line 61
    sput-object v0, Lcom/google/googlenav/d/a;->b:[I

    .line 70
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/google/googlenav/d/d;->a(I)Lcom/google/googlenav/d/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/d/a;->g:Lcom/google/googlenav/d/d;

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const v1, 0x4c4b400

    const v0, -0x4c4b400

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p2}, Lcom/google/googlenav/d/a;->a(I)I

    move-result v2

    .line 127
    if-le p1, v1, :cond_1

    .line 131
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    :goto_1
    iput v0, p0, Lcom/google/googlenav/d/a;->e:I

    .line 136
    iput v2, p0, Lcom/google/googlenav/d/a;->f:I

    .line 137
    sget-object v1, Lcom/google/googlenav/d/a;->g:Lcom/google/googlenav/d/d;

    invoke-static {v2, v1}, Lcom/google/googlenav/d/a;->a(ILcom/google/googlenav/d/d;)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/d/a;->c:I

    .line 138
    sget-object v1, Lcom/google/googlenav/d/a;->g:Lcom/google/googlenav/d/d;

    invoke-static {v0, v1}, Lcom/google/googlenav/d/a;->b(ILcom/google/googlenav/d/d;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/d/a;->d:I

    .line 139
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method private static a(I)I
    .locals 3

    .prologue
    const v2, 0x15752a00

    .line 79
    move v0, p0

    :goto_0
    const v1, -0xaba9500

    if-ge v0, v1, :cond_0

    .line 80
    add-int/2addr v0, v2

    goto :goto_0

    .line 82
    :cond_0
    :goto_1
    const v1, 0xaba9500

    if-le v0, v1, :cond_1

    .line 83
    sub-int/2addr v0, v2

    goto :goto_1

    .line 85
    :cond_1
    return v0
.end method

.method private static a(ILcom/google/googlenav/d/d;)I
    .locals 6

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/google/googlenav/d/d;->a()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    int-to-long v2, p0

    .line 212
    invoke-virtual {p1}, Lcom/google/googlenav/d/d;->a()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x15752a00

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/google/googlenav/common/io/b/a;)Lcom/google/googlenav/d/a;
    .locals 3

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    .line 530
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v1

    .line 531
    new-instance v2, Lcom/google/googlenav/d/a;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/d/a;-><init>(II)V

    return-object v2
.end method

.method private static a(II)Ljava/lang/String;
    .locals 6

    .prologue
    .line 507
    invoke-static {p0}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    .line 508
    invoke-static {p1}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/DataInput;[I)V
    .locals 4

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    aput v1, p1, v0

    .line 464
    const/4 v0, 0x1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 465
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    .line 466
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    .line 467
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 468
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    or-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method private static b(I)I
    .locals 2

    .prologue
    .line 642
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xf4240

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static b(ILcom/google/googlenav/d/d;)I
    .locals 12

    .prologue
    const-wide/32 v10, 0xf4240

    .line 287
    invoke-static {p0}, Lcom/google/googlenav/d/a;->b(I)I

    move-result v0

    .line 289
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xf4240

    rem-int/2addr v1, v2

    .line 291
    invoke-static {}, Lcom/google/googlenav/d/a;->d()[I

    move-result-object v2

    .line 293
    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    mul-int/lit8 v3, v3, -0x1

    aget v4, v2, v0

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    .line 298
    add-int/lit8 v4, v0, -0x1

    aget v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    aget v5, v2, v0

    mul-int/lit8 v5, v5, 0x6

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x6

    .line 302
    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    mul-int/lit8 v5, v5, -0x2

    aget v6, v2, v0

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    mul-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x2

    aget v6, v2, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x6

    .line 307
    aget v0, v2, v0

    .line 309
    int-to-long v2, v3

    int-to-long v6, v1

    mul-long/2addr v2, v6

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    int-to-long v6, v1

    mul-long/2addr v2, v6

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    int-to-long v6, v4

    int-to-long v8, v1

    mul-long/2addr v6, v8

    int-to-long v8, v1

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    div-long/2addr v6, v10

    add-long/2addr v2, v6

    int-to-long v4, v5

    int-to-long v6, v1

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    add-long v1, v2, v4

    int-to-long v3, v0

    add-long v0, v1, v3

    long-to-int v0, v0

    .line 316
    if-gez p0, :cond_0

    .line 317
    neg-int v0, v0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlenav/d/d;->a()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 327
    invoke-static {v0, p1}, Lcom/google/googlenav/d/a;->c(ILcom/google/googlenav/d/d;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-long v3, v0

    sub-long v0, v1, v3

    long-to-int v0, v0

    .line 329
    return v0
.end method

.method private static c(ILcom/google/googlenav/d/d;)I
    .locals 4

    .prologue
    .line 636
    int-to-long v0, p0

    invoke-virtual {p1}, Lcom/google/googlenav/d/d;->a()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x15752a00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static declared-synchronized d()[I
    .locals 3

    .prologue
    .line 222
    const-class v1, Lcom/google/googlenav/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/googlenav/d/a;->a:[I

    if-nez v0, :cond_0

    .line 223
    const/16 v0, 0x54

    new-array v0, v0, [I

    sput-object v0, Lcom/google/googlenav/d/a;->a:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    const/16 v0, 0xfd

    :try_start_1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 245
    invoke-static {v0}, Lcom/google/googlenav/common/io/k;->a([B)Ljava/io/DataInput;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/d/a;->a:[I

    invoke-static {v0, v2}, Lcom/google/googlenav/d/a;->a(Ljava/io/DataInput;[I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_0
    :try_start_2
    sget-object v0, Lcom/google/googlenav/d/a;->a:[I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t read mercator.dat"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 226
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x10t
        -0x43t
        -0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x42t
        0x73t
        0xft
        0x43t
        -0x5dt
        0xft
        0x46t
        0x6t
        0xft
        0x49t
        -0x67t
        0xft
        0x4et
        0x61t
        0xft
        0x54t
        0x5et
        0xft
        0x5bt
        -0x6dt
        0xft
        0x64t
        0x2t
        0xft
        0x6dt
        -0x50t
        0xft
        0x78t
        -0x61t
        0xft
        -0x7ct
        -0x2ct
        0xft
        -0x6et
        0x54t
        0xft
        -0x5ft
        0x26t
        0xft
        -0x4ft
        0x4et
        0xft
        -0x3et
        -0x2dt
        0xft
        -0x2bt
        -0x43t
        0xft
        -0x16t
        0x15t
        0xft
        -0x1t
        -0x1ft
        0x10t
        0x17t
        0x2dt
        0x10t
        0x30t
        0x1t
        0x10t
        0x4at
        0x6bt
        0x10t
        0x66t
        0x74t
        0x10t
        -0x7ct
        0x2bt
        0x10t
        -0x5dt
        -0x64t
        0x10t
        -0x3ct
        -0x29t
        0x10t
        -0x19t
        -0x13t
        0x11t
        0xct
        -0x12t
        0x11t
        0x33t
        -0x14t
        0x11t
        0x5ct
        -0x4t
        0x11t
        -0x78t
        0x34t
        0x11t
        -0x4bt
        -0x57t
        0x11t
        -0x1bt
        0x76t
        0x12t
        0x17t
        -0x4ct
        0x12t
        0x4ct
        -0x7ft
        0x12t
        -0x7dt
        -0x3t
        0x12t
        -0x42t
        0x46t
        0x12t
        -0x5t
        -0x7ct
        0x13t
        0x3bt
        -0x25t
        0x13t
        0x7ft
        0x77t
        0x13t
        -0x3at
        -0x7at
        0x14t
        0x11t
        0x38t
        0x14t
        0x5ft
        -0x3ct
        0x14t
        -0x4et
        0x64t
        0x15t
        0x9t
        0x57t
        0x15t
        0x64t
        -0x1bt
        0x15t
        -0x3bt
        0x56t
        0x16t
        0x2at
        -0x1t
        0x16t
        -0x6at
        0x3at
        0x17t
        0x7t
        0x6dt
        0x17t
        0x7ft
        0x2t
        0x17t
        -0x3t
        0x75t
        0x18t
        -0x7dt
        0x48t
        0x19t
        0x11t
        0x14t
        0x19t
        -0x59t
        0x78t
        0x1at
        0x47t
        0x2et
        0x1at
        -0xft
        0x3t
        0x1bt
        -0x5bt
        -0x27t
        0x1ct
        0x66t
        -0x4dt
        0x1dt
        0x34t
        -0x4dt
        0x1et
        0x11t
        0x1ft
        0x1et
        -0x3t
        0x6ft
        0x1ft
        -0x5t
        0x4at
        0x21t
        0xct
        -0x69t
        0x22t
        0x33t
        -0x78t
        0x23t
        0x72t
        -0x5bt
        0x24t
        -0x34t
        -0x1et
        0x26t
        0x45t
        -0x4ct
        0x27t
        -0x1ft
        0x2at
        0x29t
        -0x5ct
        0x19t
        0x2bt
        -0x6ct
        0x46t
        0x2dt
        -0x48t
        -0x5bt
        0x30t
        0x19t
        -0x54t
        0x32t
        -0x3ft
        -0x3ft
        0x35t
        -0x43t
        -0x2ft
        0x39t
        0x1et
        0x1ct
        0x3ct
        -0x9t
        0x69t
        0x41t
        0x64t
        -0x60t
        0x46t
        -0x77t
        0x52t
        0x4ct
        -0x6bt
        0x73t
        0x53t
        -0x35t
        0x4ft
        0x5ct
        -0x77t
        0x34t
        0x67t
        0x5at
        0xct
    .end array-data
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/googlenav/d/a;->e:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/google/googlenav/d/a;->f:I

    return v0
.end method

.method public final c()Lcom/google/googlenav/common/io/b/a;
    .locals 3

    .prologue
    .line 498
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/j/b/a/b/l;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 500
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/d/a;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 501
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlenav/d/a;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 502
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 842
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 852
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    instance-of v2, p1, Lcom/google/googlenav/d/a;

    if-eqz v2, :cond_0

    .line 849
    check-cast p1, Lcom/google/googlenav/d/a;

    .line 852
    iget v2, p0, Lcom/google/googlenav/d/a;->e:I

    iget v3, p1, Lcom/google/googlenav/d/a;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/googlenav/d/a;->f:I

    iget v3, p1, Lcom/google/googlenav/d/a;->f:I

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/google/googlenav/d/a;->c:I

    iget v3, p1, Lcom/google/googlenav/d/a;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/googlenav/d/a;->d:I

    iget v3, p1, Lcom/google/googlenav/d/a;->d:I

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 860
    iget v0, p0, Lcom/google/googlenav/d/a;->e:I

    .line 861
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lcom/google/googlenav/d/a;->f:I

    add-int/2addr v0, v1

    .line 862
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    iget v0, p0, Lcom/google/googlenav/d/a;->e:I

    iget v1, p0, Lcom/google/googlenav/d/a;->f:I

    invoke-static {v0, v1}, Lcom/google/googlenav/d/a;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
