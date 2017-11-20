.class final Lcom/google/android/maps/driveabout/a/ag;
.super Lcom/google/googlenav/datarequest/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/a/ad;

.field private final b:Ljava/util/Locale;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/maps/driveabout/a/ae;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILcom/google/android/maps/driveabout/a/ae;)V
    .locals 6

    .prologue
    .line 363
    invoke-static {p3}, Lcom/google/android/maps/driveabout/a/ad;->a(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/a/ag;-><init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILjava/lang/String;Lcom/google/android/maps/driveabout/a/ae;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/a/ad;Ljava/util/Locale;ILjava/lang/String;Lcom/google/android/maps/driveabout/a/ae;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-direct {p0}, Lcom/google/googlenav/datarequest/a;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    .line 369
    iput p3, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    .line 370
    iput-object p4, p0, Lcom/google/android/maps/driveabout/a/ag;->d:Ljava/lang/String;

    .line 371
    iput-object p5, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    .line 372
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/ag;)I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/a/ag;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/a/ag;)Lcom/google/android/maps/driveabout/a/ae;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    return-object v0
.end method


# virtual methods
.method public final getRequestType()I
    .locals 1

    .prologue
    .line 437
    const/16 v0, 0x27

    return v0
.end method

.method public final readResponseData(Ljava/io/DataInput;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 393
    sget-object v2, Lcom/google/j/b/a/b/w;->b:Lcom/google/googlenav/common/io/b/d;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/d;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 396
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 397
    const-string v1, "CannedSpeechManager"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Empty response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " voice bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_0
    return v0

    .line 404
    :cond_0
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 406
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v2

    .line 408
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 409
    const-string v2, "CannedSpeechManager"

    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x17

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Got a voice bundle for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/maps/driveabout/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    iget v3, p0, Lcom/google/android/maps/driveabout/a/ag;->c:I

    const/4 v4, 0x4

    .line 412
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->e(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v6}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/a/ae;->a(Ljava/util/Locale;IJLjava/lang/String;)Lcom/google/android/maps/driveabout/a/ae;

    move-result-object v2

    .line 414
    iget-object v3, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    const/4 v4, 0x6

    .line 417
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    .line 414
    invoke-static {v3, p0, v2, v0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;Lcom/google/android/maps/driveabout/a/ae;[B)V

    :goto_1
    move v0, v1

    .line 432
    goto :goto_0

    .line 418
    :cond_1
    const/16 v0, 0x130

    if-ne v2, v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/a/ae;->h()V

    .line 421
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ad;)V

    goto :goto_1

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1

    .line 425
    :cond_3
    const/16 v0, 0x194

    if-ne v2, v0, :cond_4

    .line 426
    const-string v0, "CannedSpeechManager"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to get voice bundle for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->b(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1

    .line 429
    :cond_4
    const-string v0, "CannedSpeechManager"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->b:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to get voice bundle for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->a:Lcom/google/android/maps/driveabout/a/ad;

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/a/ad;->a(Lcom/google/android/maps/driveabout/a/ad;Lcom/google/android/maps/driveabout/a/ag;)V

    goto :goto_1
.end method

.method public final writeRequestData(Ljava/io/DataOutput;)V
    .locals 5

    .prologue
    .line 376
    new-instance v1, Lcom/google/googlenav/common/io/b/a;

    sget-object v0, Lcom/google/j/b/a/b/w;->a:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 378
    const/4 v2, 0x4

    const-string v3, "/file/"

    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/b/a;->a(ILjava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/ag;->e:Lcom/google/android/maps/driveabout/a/ae;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/a/ae;->b()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/b/a;->b(IJ)V

    .line 385
    :cond_0
    invoke-virtual {v1}, Lcom/google/googlenav/common/io/b/a;->c()[B

    move-result-object v0

    .line 386
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 387
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 388
    return-void

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
