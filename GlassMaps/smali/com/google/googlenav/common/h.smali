.class public final Lcom/google/googlenav/common/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static final b:Ljava/util/Set;

.field private static c:J

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Lcom/google/googlenav/common/i;

.field private static h:Z

.field private static i:Lcom/google/googlenav/common/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v0, "USER_EVENTS"

    .line 36
    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/h;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 58
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0}, Lcom/google/android/a/a;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    .line 59
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/googlenav/common/h;->c:J

    .line 120
    sput-boolean v2, Lcom/google/googlenav/common/h;->d:Z

    .line 123
    sput-boolean v2, Lcom/google/googlenav/common/h;->e:Z

    .line 126
    sput-boolean v3, Lcom/google/googlenav/common/h;->f:Z

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    .line 133
    sput-boolean v2, Lcom/google/googlenav/common/h;->h:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    return-void
.end method

.method public static a()Lcom/google/googlenav/common/h;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/googlenav/common/h;->i:Lcom/google/googlenav/common/h;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/google/googlenav/common/h;

    invoke-direct {v0}, Lcom/google/googlenav/common/h;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/h;->i:Lcom/google/googlenav/common/h;

    .line 185
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/h;->i:Lcom/google/googlenav/common/h;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 495
    array-length v0, p0

    if-nez v0, :cond_0

    .line 496
    const-string v0, ""

    .line 511
    :goto_0
    return-object v0

    .line 499
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 502
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 505
    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/google/googlenav/common/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 508
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(J)V
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/h;->a(Lcom/google/googlenav/common/i;J)V

    .line 768
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/i;)V
    .locals 1

    .prologue
    .line 211
    sput-object p0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    .line 212
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/common/h;->h:Z

    .line 213
    invoke-static {}, Lcom/google/googlenav/common/h;->e()V

    .line 214
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/i;J)V
    .locals 4

    .prologue
    .line 771
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 775
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 776
    :try_start_0
    invoke-static {p0}, Lcom/google/googlenav/common/h;->b(Lcom/google/googlenav/common/i;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 779
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 780
    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 786
    :goto_1
    sput-wide p1, Lcom/google/googlenav/common/h;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/i;->a([B)V

    goto :goto_0

    .line 782
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 783
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 784
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 790
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/common/i;->a([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/googlenav/common/i;->a([B)V

    throw v0
.end method

.method private static a(Z[B)V
    .locals 7

    .prologue
    .line 546
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/h;->e()V

    .line 552
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 554
    sget-object v0, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    .line 555
    invoke-static {p1, v0}, Lcom/google/googlenav/common/j;->a([BLjava/util/Set;)Z

    move-result v5

    move-object v2, p1

    .line 578
    :goto_1
    new-instance v0, Lcom/google/googlenav/datarequest/l;

    .line 579
    invoke-static {}, Lcom/google/googlenav/common/h;->f()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/datarequest/l;-><init>(I[BZZZLjava/lang/Object;)V

    .line 582
    invoke-static {}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_2

    .line 584
    invoke-virtual {v1, v0}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/d;)V

    .line 589
    :cond_2
    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/google/googlenav/common/h;->d:Z

    if-nez v0, :cond_0

    .line 590
    :cond_3
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/h;->a(J)V

    goto :goto_0

    .line 558
    :cond_4
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    .line 559
    new-instance v2, Lcom/google/googlenav/common/io/b/a;

    sget-object v3, Lcom/google/j/b/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 561
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 562
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 563
    invoke-virtual {v2, p1}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    .line 564
    sget-object v5, Lcom/google/googlenav/common/h;->b:Ljava/util/Set;

    invoke-static {v2, v5}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/b/a;Ljava/util/Set;)Z

    move-result v5

    .line 566
    const/4 v6, 0x3

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 567
    invoke-virtual {v2}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    .line 570
    array-length v1, v0

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 571
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 572
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    const-string v1, "USER_EVENTS"

    invoke-static {v1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    .line 267
    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;J)Z
    .locals 10

    .prologue
    const/4 v4, 0x3

    const-wide/32 v7, 0x63ff9c

    const/4 v3, 0x1

    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 306
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return v2

    .line 309
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/h;->e()V

    .line 311
    sget-object v0, Lcom/google/googlenav/common/h;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Event: type=%s, status: %s, data: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p1, v4, v3

    aput-object p2, v4, v9

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/i;->a()[B

    move-result-object v0

    .line 314
    sget-wide v4, Lcom/google/googlenav/common/h;->c:J

    sub-long v4, p3, v4

    .line 319
    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    array-length v1, v0

    const/16 v6, 0x258

    if-gt v1, v6, :cond_2

    .line 321
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v1

    if-nez v1, :cond_1

    cmp-long v1, v4, v7

    if-gtz v1, :cond_2

    .line 322
    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    cmp-long v1, v4, v7

    if-lez v1, :cond_5

    .line 323
    :cond_2
    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_7

    .line 326
    :cond_3
    invoke-static {p3, p4}, Lcom/google/googlenav/common/h;->a(J)V

    .line 338
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/i;->a()[B

    move-result-object v0

    .line 342
    :cond_5
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v1

    if-nez v1, :cond_a

    .line 343
    array-length v1, v0

    if-le v1, v9, :cond_9

    .line 348
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    int-to-short v1, v1

    .line 351
    :goto_2
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    .line 353
    :goto_3
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 354
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 357
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v8

    if-nez v8, :cond_8

    .line 359
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 366
    array-length v1, v0

    if-le v1, v9, :cond_6

    .line 369
    const/4 v1, 0x2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v0, v1, v8}, Ljava/io/DataOutputStream;->write([BII)V

    .line 373
    :cond_6
    int-to-short v0, p0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 377
    const-wide/32 v0, 0x63ff9c

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x64

    div-long/2addr v0, v4

    .line 378
    long-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 379
    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v7, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 401
    :goto_4
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/i;->a([B)V

    .line 402
    sput-wide p3, Lcom/google/googlenav/common/h;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 404
    goto/16 :goto_0

    .line 331
    :cond_7
    sget-boolean v0, Lcom/google/googlenav/common/d;->b:Z

    if-nez v0, :cond_4

    .line 335
    invoke-static {}, Lcom/google/googlenav/common/h;->a()Lcom/google/googlenav/common/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/h;->a(Z)V

    goto :goto_1

    .line 383
    :cond_8
    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v8, Lcom/google/j/b/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v8}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 384
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/b/a;->a([B)Lcom/google/googlenav/common/io/b/a;

    .line 386
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v8, Lcom/google/j/b/a/b/ad;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v8}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 387
    const/4 v8, 0x1

    invoke-virtual {v0, v8, p0}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 393
    const-wide/32 v8, 0x63ff9c

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v8, 0x64

    div-long/2addr v4, v8

    .line 394
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4, v5}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 395
    const/4 v4, 0x3

    invoke-virtual {v0, v4, p1}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 396
    const/4 v4, 0x4

    invoke-virtual {v0, v4, p2}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 398
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 399
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/b/a;->b(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 407
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_2

    :cond_a
    move v1, v2

    goto/16 :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 287
    const/16 v0, 0x4e

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/common/h;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/h;->e()V

    .line 225
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-static {v0}, Lcom/google/googlenav/common/h;->b(Lcom/google/googlenav/common/i;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Lcom/google/googlenav/common/i;)Z
    .locals 2

    .prologue
    .line 229
    .line 230
    invoke-interface {p0}, Lcom/google/googlenav/common/i;->b()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/i;->c()V

    goto :goto_0
.end method

.method private static c(Lcom/google/googlenav/common/i;)V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x2

    .line 806
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-interface {p0}, Lcom/google/googlenav/common/i;->b()B

    move-result v2

    .line 810
    if-ge v2, v12, :cond_0

    .line 811
    invoke-interface {p0}, Lcom/google/googlenav/common/i;->a()[B

    move-result-object v2

    .line 813
    if-eqz v2, :cond_4

    array-length v3, v2

    if-le v3, v12, :cond_4

    .line 814
    new-instance v3, Lcom/google/googlenav/common/io/b/a;

    sget-object v4, Lcom/google/j/b/a/b/ad;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 815
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 816
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 819
    :try_start_0
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 821
    if-gez v4, :cond_2

    .line 822
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid numEvents value!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :catch_0
    move-exception v0

    move v0, v1

    :goto_1
    sget-object v2, Lcom/google/googlenav/common/h;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "There was an error upgrading the V1 log store."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    :goto_2
    if-nez v0, :cond_0

    .line 855
    invoke-interface {p0, v12}, Lcom/google/googlenav/common/i;->a(B)V

    .line 856
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->a()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/google/googlenav/common/h;->a(Lcom/google/googlenav/common/i;J)V

    .line 857
    invoke-interface {p0}, Lcom/google/googlenav/common/i;->c()V

    goto :goto_0

    .line 824
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 825
    const/4 v2, 0x1

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    move v2, v1

    .line 826
    :goto_3
    if-ge v2, v4, :cond_3

    .line 827
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 828
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 829
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 832
    new-instance v10, Lcom/google/googlenav/common/io/b/a;

    sget-object v11, Lcom/google/j/b/a/b/ad;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v10, v11}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 833
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 834
    const/4 v6, 0x2

    invoke-virtual {v10, v6, v7}, Lcom/google/googlenav/common/io/b/a;->h(II)V

    .line 835
    const/4 v6, 0x3

    invoke-virtual {v10, v6, v8}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 836
    const/4 v6, 0x4

    invoke-virtual {v10, v6, v9}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 838
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v10}, Lcom/google/googlenav/common/io/b/a;->a(ILcom/google/googlenav/common/io/b/a;)V

    .line 826
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_3

    .line 841
    :cond_3
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Lcom/google/googlenav/common/i;->a(B)V

    .line 842
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/googlenav/common/i;->a([B)V

    .line 843
    invoke-interface {p0}, Lcom/google/googlenav/common/i;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 845
    :try_start_2
    sget-object v2, Lcom/google/googlenav/common/h;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Successfully upgraded log event store to v2."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 847
    :catch_1
    move-exception v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 850
    goto :goto_2
.end method

.method private static d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 144
    sget-boolean v1, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/google/googlenav/common/h;->e:Z

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-static {}, Lcom/google/googlenav/common/d;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    const-string v0, "No LogEventStore found"

    sget-object v1, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    sget-object v1, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private static e()V
    .locals 3

    .prologue
    .line 164
    sget-boolean v0, Lcom/google/googlenav/common/h;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v1, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    .line 173
    invoke-interface {v0}, Lcom/google/googlenav/common/i;->b()B

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    sget-boolean v0, Lcom/google/googlenav/common/d;->a:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/google/googlenav/common/h;->f:Z

    if-eqz v0, :cond_3

    .line 175
    :cond_2
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-static {v0}, Lcom/google/googlenav/common/h;->c(Lcom/google/googlenav/common/i;)V

    .line 177
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/common/h;->h:Z

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f()I
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private static g()I
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/google/googlenav/common/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Lcom/google/googlenav/common/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-static {}, Lcom/google/googlenav/common/h;->e()V

    .line 535
    sget-object v0, Lcom/google/googlenav/common/h;->g:Lcom/google/googlenav/common/i;

    invoke-interface {v0}, Lcom/google/googlenav/common/i;->a()[B

    move-result-object v0

    .line 536
    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {}, Lcom/google/googlenav/common/h;->g()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 537
    invoke-static {p1, v0}, Lcom/google/googlenav/common/h;->a(Z[B)V

    goto :goto_0
.end method
