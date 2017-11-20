.class public final Lcom/google/android/gms/location/LocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/m;


# instance fields
.field a:I

.field b:J

.field c:J

.field d:Z

.field e:J

.field f:I

.field g:F

.field h:J

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 500
    new-instance v0, Lcom/google/android/gms/location/m;

    invoke-direct {v0}, Lcom/google/android/gms/location/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:I

    .line 159
    const/16 v0, 0x66

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 160
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 161
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    .line 163
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 164
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:J

    .line 167
    return-void
.end method

.method constructor <init>(IIJJZJIFJ)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->i:I

    .line 518
    iput p2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 519
    iput-wide p3, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 520
    iput-wide p5, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 521
    iput-boolean p7, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    .line 522
    iput-wide p8, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 523
    iput p10, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 524
    iput p11, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 525
    iput-wide p12, p0, Lcom/google/android/gms/location/LocationRequest;->h:J

    .line 526
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationRequest;)V
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->i:I

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:I

    .line 175
    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->a:I

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 176
    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 177
    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 178
    iget-boolean v0, p1, Lcom/google/android/gms/location/LocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    .line 179
    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 180
    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->f:I

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 181
    iget v0, p1, Lcom/google/android/gms/location/LocationRequest;->g:F

    iput v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 182
    iget-wide v0, p1, Lcom/google/android/gms/location/LocationRequest;->h:J

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:J

    .line 183
    return-void
.end method

.method public static a()Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    packed-switch p0, :pswitch_data_0

    .line 550
    :pswitch_0
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 542
    :pswitch_1
    const-string v0, "PRIORITY_HIGH_ACCURACY"

    goto :goto_0

    .line 544
    :pswitch_2
    const-string v0, "PRIORITY_BALANCED_POWER_ACCURACY"

    goto :goto_0

    .line 546
    :pswitch_3
    const-string v0, "PRIORITY_LOW_POWER"

    goto :goto_0

    .line 548
    :pswitch_4
    const-string v0, "PRIORITY_NO_POWER"

    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static d(J)V
    .locals 4

    .prologue
    .line 476
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid interval: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(F)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid displacement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    .line 461
    return-object p0
.end method

.method public final a(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid quality: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :pswitch_1
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    .line 208
    return-object p0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 5

    .prologue
    .line 247
    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->d(J)V

    .line 248
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 249
    iget-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    if-nez v0, :cond_0

    .line 250
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 252
    :cond_0
    return-object p0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    return v0
.end method

.method public final b(I)Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .prologue
    .line 428
    if-gtz p1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid numUpdates: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iput p1, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    .line 432
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 1

    .prologue
    .line 331
    invoke-static {p1, p2}, Lcom/google/android/gms/location/LocationRequest;->d(J)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    .line 333
    iput-wide p1, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 334
    return-object p0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    return-wide v0
.end method

.method public final c(J)Lcom/google/android/gms/location/LocationRequest;
    .locals 9

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 367
    sub-long v2, v6, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 368
    iput-wide v6, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 373
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v4, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    .line 374
    :cond_0
    return-object p0

    .line 370
    :cond_1
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    goto :goto_0
.end method

.method public final d()J
    .locals 4

    .prologue
    .line 297
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->h:J

    .line 298
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 299
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    .line 301
    :cond_0
    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 585
    if-ne p0, p1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/LocationRequest;

    if-nez v2, :cond_2

    move v0, v1

    .line 589
    goto :goto_0

    .line 591
    :cond_2
    check-cast p1, Lcom/google/android/gms/location/LocationRequest;

    .line 592
    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->a:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/LocationRequest;->d:Z

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    iget v3, p1, Lcom/google/android/gms/location/LocationRequest;->g:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    return-wide v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    return v0
.end method

.method public final h()F
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 578
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationRequest;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->g:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final i()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/google/android/gms/location/LocationRequest;->i:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    invoke-static {v2}, Lcom/google/android/gms/location/LocationRequest;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->a:I

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    .line 559
    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_0
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 565
    iget-wide v2, p0, Lcom/google/android/gms/location/LocationRequest;->e:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 566
    const-string v1, " expireIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    iget v1, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 570
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/LocationRequest;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 535
    invoke-static {p0, p1}, Lcom/google/android/gms/location/m;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/os/Parcel;)V

    .line 536
    return-void
.end method
