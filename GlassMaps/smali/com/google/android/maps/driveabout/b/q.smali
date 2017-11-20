.class public final Lcom/google/android/maps/driveabout/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/google/android/maps/driveabout/nav/ao;

.field private d:[Lcom/google/android/maps/driveabout/nav/ao;

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:[Lcom/google/android/maps/driveabout/nav/b;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/b/q;->a:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    .line 138
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 615
    new-instance v0, Lcom/google/android/maps/driveabout/b/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/r;-><init>()V

    .line 616
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/r;->b(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/r;->a(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/b/r;->a(I)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 619
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/r;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a([Lcom/google/android/maps/driveabout/nav/ao;I[Lcom/google/android/maps/driveabout/nav/b;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/google/android/maps/driveabout/b/r;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/b/r;-><init>()V

    .line 636
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 637
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/r;->a(I)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 638
    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/b/r;->a([Lcom/google/android/maps/driveabout/nav/b;)Lcom/google/android/maps/driveabout/b/r;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/b/r;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    .prologue
    .line 369
    invoke-static {p1}, Lcom/google/android/maps/driveabout/b/q;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    .line 372
    if-nez p0, :cond_0

    if-nez v1, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(JJJ)Lcom/google/googlenav/common/io/b/a;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 336
    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    cmp-long v0, p4, v2

    if-nez v0, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 354
    :cond_0
    :goto_0
    return-object v0

    .line 340
    :cond_1
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/h/b/a/a;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 342
    cmp-long v1, p0, v2

    if-eqz v1, :cond_2

    .line 343
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 346
    :cond_2
    cmp-long v1, p2, v2

    if-eqz v1, :cond_3

    .line 347
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 350
    :cond_3
    cmp-long v1, p4, v2

    if-eqz v1, :cond_0

    .line 351
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p4, p5}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const-wide/16 v4, 0x0

    .line 289
    const-wide/16 v2, 0x0

    .line 290
    const/4 v0, 0x0

    .line 292
    if-eqz p2, :cond_5

    .line 293
    invoke-virtual {p0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_4

    .line 296
    :try_start_0
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->a()J

    move-result-wide v4

    .line 298
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->b()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-object v7, v1

    move-wide v0, v4

    .line 306
    :goto_1
    const-wide/16 v5, 0x0

    .line 307
    const/4 v4, 0x0

    .line 308
    if-eqz p3, :cond_3

    .line 309
    invoke-virtual {p0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    if-eqz v4, :cond_2

    .line 311
    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->a(Ljava/lang/String;I)J

    move-result-wide v5

    move-object v8, v4

    move-wide v9, v5

    move-wide v4, v9

    move-object v6, v8

    .line 316
    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/b/q;->a(JJJ)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 317
    if-nez v0, :cond_1

    .line 318
    const/4 v0, 0x0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    sget-object v2, Lcom/google/android/maps/driveabout/b/q;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error parsing feature id [featureIdString=%s]."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/common/io/b;->b()Lcom/google/common/io/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/b;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    sget-object v1, Lcom/google/android/maps/driveabout/b/q;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error trying to Base64 encode CachedGeocodeExternalProto [f=%s, c=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v8, v4

    move-wide v9, v5

    move-wide v4, v9

    move-object v6, v8

    goto :goto_2

    :cond_3
    move-object v8, v4

    move-wide v9, v5

    move-wide v4, v9

    move-object v6, v8

    goto :goto_2

    :cond_4
    move-object v7, v1

    move-wide v0, v4

    goto :goto_1

    :cond_5
    move-object v7, v0

    move-wide v0, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b/q;->b(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/maps/driveabout/b/q;->b([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 501
    const-string v0, "google.navigation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/m;
    .locals 8

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v0, 0x0

    .line 386
    if-nez p0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 393
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 394
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 395
    new-instance v1, Lcom/google/android/maps/driveabout/model/m;

    mul-double/2addr v2, v6

    double-to-int v2, v2

    mul-double v3, v4, v6

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/driveabout/model/m;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lcom/google/android/maps/driveabout/model/m;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/googlenav/common/e/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b([Lcom/google/android/maps/driveabout/nav/b;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/b;->b()I

    move-result v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/nav/b;->c()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/b;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    new-array v0, v2, [Lcom/google/android/maps/driveabout/nav/b;

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 425
    array-length v1, v5

    new-array v1, v1, [Lcom/google/android/maps/driveabout/nav/b;

    .line 427
    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v4, v5, v2

    .line 428
    const-string v7, ":"

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 429
    array-length v7, v4

    if-ne v7, v10, :cond_0

    .line 433
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 434
    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 435
    add-int/lit8 v4, v3, 0x1

    new-instance v9, Lcom/google/android/maps/driveabout/nav/b;

    invoke-direct {v9, v7, v8}, Lcom/google/android/maps/driveabout/nav/b;-><init>(II)V

    aput-object v9, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 440
    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    const-string v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 471
    const-string v3, "1"

    const-string v4, "nav"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    const-string v3, "daddr"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 476
    if-eqz v3, :cond_0

    .line 480
    const-string v4, "dirflg"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    .line 482
    if-eqz v2, :cond_2

    .line 483
    const-string v4, "w"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 484
    const/4 v2, 0x2

    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    .line 493
    :cond_2
    :goto_1
    new-array v2, v1, [Lcom/google/android/maps/driveabout/nav/ao;

    new-instance v4, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v4, v3, v5, v5, v5}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/model/m;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    iput-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    move v0, v1

    .line 494
    goto :goto_0

    .line 485
    :cond_3
    const-string v4, "b"

    .line 486
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 487
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    goto :goto_1

    .line 488
    :cond_4
    const-string v4, "r"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 489
    iput v1, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 146
    sget-object v0, Lcom/google/android/maps/driveabout/b/q;->a:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "parse() [mUriString=%s]."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-interface {v0, v1, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->k:Z

    move v0, v2

    .line 265
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, "google.navigation:"

    .line 154
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    .line 155
    goto :goto_0

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 173
    :goto_1
    const-string v0, "sync_layers"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->l:Z

    .line 180
    :cond_2
    const-string v0, "resume"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    iput v7, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    move v0, v2

    .line 183
    goto :goto_0

    .line 169
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "/?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&x=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 187
    :cond_4
    const-string v0, "mode"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/b/q;->e:Z

    .line 189
    iput v3, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    .line 190
    const-string v4, "w"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    iput v7, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    .line 204
    :goto_2
    const-string v0, "entry"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->g:Ljava/lang/String;

    .line 207
    const-string v0, "fd"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    iput v6, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    move v0, v2

    .line 210
    goto/16 :goto_0

    .line 192
    :cond_5
    const-string v4, "b"

    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 194
    iput v6, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    goto :goto_2

    .line 195
    :cond_6
    const-string v4, "r"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 196
    iput v2, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    goto :goto_2

    .line 197
    :cond_7
    const-string v4, "d"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    iput v3, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    goto :goto_2

    .line 200
    :cond_8
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->e:Z

    goto :goto_2

    .line 213
    :cond_9
    const-string v0, "opt"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->c(Ljava/lang/String;)[Lcom/google/android/maps/driveabout/nav/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->h:[Lcom/google/android/maps/driveabout/nav/b;

    .line 214
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->h:[Lcom/google/android/maps/driveabout/nav/b;

    if-nez v0, :cond_a

    move v0, v3

    .line 215
    goto/16 :goto_0

    .line 218
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    const-string v0, "altvia"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/google/android/maps/driveabout/b/q;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    .line 223
    if-nez v0, :cond_b

    move v0, v3

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_b
    new-instance v6, Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {v6, v0}, Lcom/google/android/maps/driveabout/nav/ao;-><init>(Lcom/google/android/maps/driveabout/model/m;)V

    .line 227
    invoke-virtual {v6, v7}, Lcom/google/android/maps/driveabout/nav/ao;->a(I)V

    .line 228
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 231
    :cond_c
    const-string v0, "r"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->i:Ljava/lang/String;

    .line 233
    const-string v0, "s"

    .line 234
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "sll"

    .line 235
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stitle"

    .line 236
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "stoken"

    const-string v8, "sftid"

    const/4 v9, 0x0

    .line 237
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/q;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:Lcom/google/android/maps/driveabout/nav/ao;

    .line 239
    const-string v0, "sr"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_d

    move v0, v3

    .line 242
    goto/16 :goto_0

    .line 244
    :cond_d
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    .line 247
    :cond_e
    const-string v0, "q"

    .line 248
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ll"

    .line 249
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    .line 250
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "token"

    const-string v8, "ftid"

    const-string v9, "cid"

    .line 251
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/q;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-static {v0, v5, v6, v7}, Lcom/google/android/maps/driveabout/b/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/maps/driveabout/nav/ao;

    move-result-object v0

    .line 253
    if-nez v0, :cond_f

    move v0, v3

    .line 254
    goto/16 :goto_0

    .line 257
    :cond_f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/nav/ao;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/nav/ao;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 259
    const-string v0, "true"

    const-string v4, "goff"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-lt v0, v2, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_11

    :cond_10
    move v0, v3

    .line 261
    goto/16 :goto_0

    .line 263
    :cond_11
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    :cond_12
    move v0, v2

    .line 265
    goto/16 :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->c:Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final d()[Lcom/google/android/maps/driveabout/nav/ao;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/b/q;->e:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 588
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mUriString"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->b:Ljava/lang/String;

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mWaypointOrigin"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->c:Lcom/google/android/maps/driveabout/nav/ao;

    .line 590
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mWaypoints"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->d:[Lcom/google/android/maps/driveabout/nav/ao;

    .line 591
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mUseMostRecentTraveMode"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->e:Z

    .line 592
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Z)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mTravelMode"

    iget v2, p0, Lcom/google/android/maps/driveabout/b/q;->f:I

    .line 593
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mEntryPoint"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->g:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mOptions"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->h:[Lcom/google/android/maps/driveabout/nav/b;

    .line 595
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mReturnOnError"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/q;->i:Ljava/lang/String;

    .line 596
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mIntentType"

    iget v2, p0, Lcom/google/android/maps/driveabout/b/q;->j:I

    .line 597
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mIsGoogleMapsUri"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->k:Z

    .line 598
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Z)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "mShouldSyncLayers"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/b/q;->l:Z

    .line 599
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Z)Lcom/google/common/base/ac;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
