.class final Lcom/google/android/location/internal/server/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/Map;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/google/android/location/p/j;

.field private i:J

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "Gms"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NetworkLocationListeners"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "Gmm"

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7fffffff

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    .line 54
    iput v2, p0, Lcom/google/android/location/internal/server/i;->e:I

    .line 59
    iput v2, p0, Lcom/google/android/location/internal/server/i;->f:I

    .line 66
    iput v2, p0, Lcom/google/android/location/internal/server/i;->g:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/i;->h:Lcom/google/android/location/p/j;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/internal/server/i;->i:J

    .line 75
    iput v3, p0, Lcom/google/android/location/internal/server/i;->j:I

    .line 76
    iput v3, p0, Lcom/google/android/location/internal/server/i;->k:I

    .line 79
    iput p1, p0, Lcom/google/android/location/internal/server/i;->b:I

    .line 80
    return-void
.end method

.method static a(J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 295
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 296
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sec. ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min.)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/i;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/i;Lcom/google/android/location/internal/server/j;J)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p1, Lcom/google/android/location/internal/server/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p1, Lcom/google/android/location/internal/server/j;->k:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/location/internal/server/k;->b:Lcom/google/android/location/internal/server/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/internal/server/o;->a(Lcom/google/android/location/internal/server/g;J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/google/android/location/internal/server/k;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/internal/server/k;-><init>(Lcom/google/android/location/internal/server/i;B)V

    iget-object v2, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/google/android/location/internal/server/k;->a:Lcom/google/android/location/internal/server/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/internal/server/o;->a(Lcom/google/android/location/internal/server/g;J)V

    goto :goto_1
.end method

.method private static a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NLPClient: duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/location/internal/server/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/google/android/location/internal/server/p;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " low power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, " tag: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/google/android/location/internal/server/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 292
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 7

    .prologue
    const v6, 0x7fffffff

    .line 504
    iput v6, p0, Lcom/google/android/location/internal/server/i;->f:I

    .line 505
    iput v6, p0, Lcom/google/android/location/internal/server/i;->g:I

    .line 506
    iput v6, p0, Lcom/google/android/location/internal/server/i;->e:I

    .line 508
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 509
    iget v1, v0, Lcom/google/android/location/internal/server/j;->d:I

    .line 511
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Still have pending intent "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/location/internal/server/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/location/internal/server/j;->k:Z

    if-eqz v3, :cond_1

    .line 514
    iget v3, p0, Lcom/google/android/location/internal/server/i;->f:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/location/internal/server/i;->f:I

    .line 526
    :goto_1
    iget v0, v0, Lcom/google/android/location/internal/server/j;->e:I

    .line 527
    if-ne v0, v6, :cond_2

    move v0, v1

    .line 529
    :goto_2
    iget v1, p0, Lcom/google/android/location/internal/server/i;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    goto :goto_0

    .line 517
    :cond_1
    iget v3, p0, Lcom/google/android/location/internal/server/i;->e:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/location/internal/server/i;->e:I

    goto :goto_1

    .line 527
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 538
    :cond_3
    iget v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    if-eq v0, v6, :cond_4

    .line 539
    iget v0, p0, Lcom/google/android/location/internal/server/i;->e:I

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    .line 545
    :goto_3
    const/4 v1, 0x2

    if-le v0, v1, :cond_9

    .line 546
    iget v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    iget v1, p0, Lcom/google/android/location/internal/server/i;->e:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/location/internal/server/i;->e:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    .line 553
    :cond_4
    :goto_4
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BATCH: batchInterval is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/internal/server/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_5
    iget v0, p0, Lcom/google/android/location/internal/server/i;->e:I

    iget v1, p0, Lcom/google/android/location/internal/server/i;->f:I

    if-gt v0, v1, :cond_6

    .line 558
    iput v6, p0, Lcom/google/android/location/internal/server/i;->f:I

    .line 563
    :cond_6
    invoke-static {}, Lcom/google/android/location/p/j;->a()Lcom/google/android/location/p/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/i;->h:Lcom/google/android/location/p/j;

    .line 564
    iget v0, p0, Lcom/google/android/location/internal/server/i;->e:I

    iget v1, p0, Lcom/google/android/location/internal/server/i;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x2

    .line 566
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 567
    iget v3, v0, Lcom/google/android/location/internal/server/j;->d:I

    if-ge v3, v1, :cond_7

    iget-object v3, v0, Lcom/google/android/location/internal/server/j;->j:Lcom/google/android/location/p/j;

    if-eqz v3, :cond_7

    .line 568
    iget-object v3, p0, Lcom/google/android/location/internal/server/i;->h:Lcom/google/android/location/p/j;

    iget-object v0, v0, Lcom/google/android/location/internal/server/j;->j:Lcom/google/android/location/p/j;

    invoke-virtual {v3, v0}, Lcom/google/android/location/p/j;->a(Lcom/google/android/location/p/j;)V

    goto :goto_5

    .line 539
    :cond_8
    iget v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    iget v1, p0, Lcom/google/android/location/internal/server/i;->e:I

    div-int/2addr v0, v1

    goto :goto_3

    .line 549
    :cond_9
    iput v6, p0, Lcom/google/android/location/internal/server/i;->g:I

    goto :goto_4

    .line 571
    :cond_a
    return-void
.end method

.method private a(JLandroid/content/Context;Landroid/location/Location;ZZ)Z
    .locals 9

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    const/4 v0, 0x0

    .line 435
    iget-object v2, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    move-object v0, v1

    .line 436
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 437
    if-nez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/google/android/location/internal/server/i;->g()Landroid/content/Intent;

    move-result-object v0

    .line 439
    const-string v1, "location"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    move-object v1, v0

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 443
    iget-boolean v4, v0, Lcom/google/android/location/internal/server/j;->a:Z

    if-ne p5, v4, :cond_5

    if-eqz p6, :cond_1

    iget-boolean v4, v0, Lcom/google/android/location/internal/server/j;->k:Z

    if-eqz v4, :cond_5

    .line 449
    :cond_1
    iget-wide v4, v0, Lcom/google/android/location/internal/server/j;->g:J

    cmp-long v4, v4, p1

    if-gez v4, :cond_4

    .line 450
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Delivering a location to a listener registered at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/location/internal/server/j;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", location timestamp is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_2
    invoke-virtual {v0, p3, v1}, Lcom/google/android/location/internal/server/j;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 454
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dropping intent receiver"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/server/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 456
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 459
    :cond_4
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not delivering a location to a listener registered at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/google/android/location/internal/server/j;->g:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", location timestamp is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    .line 464
    goto/16 :goto_0

    .line 465
    :cond_6
    return v2
.end method

.method private g()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    const-string v1, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    iget v2, p0, Lcom/google/android/location/internal/server/i;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/location/internal/server/i;->e:I

    return v0
.end method

.method final a(JLandroid/content/Context;Landroid/location/Location;Landroid/location/Location;Z)Ljava/util/List;
    .locals 9

    .prologue
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/internal/server/i;->a(JLandroid/content/Context;Landroid/location/Location;ZZ)Z

    move-result v8

    .line 389
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/internal/server/i;->a(JLandroid/content/Context;Landroid/location/Location;ZZ)Z

    move-result v1

    or-int/2addr v1, v8

    .line 391
    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    .line 394
    :cond_0
    return-object v0
.end method

.method final a(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/location/internal/server/j;->b()V

    .line 165
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    .line 167
    :cond_0
    return-void
.end method

.method final a(Landroid/content/Context;II)V
    .locals 6

    .prologue
    .line 398
    iput p2, p0, Lcom/google/android/location/internal/server/i;->j:I

    .line 399
    iput p3, p0, Lcom/google/android/location/internal/server/i;->k:I

    .line 400
    const/4 v0, 0x0

    .line 402
    const/4 v1, 0x0

    .line 403
    iget-object v2, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 404
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 406
    iget v4, v0, Lcom/google/android/location/internal/server/j;->l:I

    if-ne v4, p2, :cond_1

    iget v4, v0, Lcom/google/android/location/internal/server/j;->m:I

    if-eq v4, p3, :cond_0

    .line 408
    :cond_1
    iput p2, v0, Lcom/google/android/location/internal/server/j;->l:I

    .line 409
    iput p3, v0, Lcom/google/android/location/internal/server/j;->m:I

    .line 410
    if-nez v1, :cond_2

    .line 411
    invoke-direct {p0}, Lcom/google/android/location/internal/server/i;->g()Landroid/content/Intent;

    move-result-object v1

    .line 412
    const-string v4, "com.google.android.location.internal.WIFI_LOCATION_STATUS"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v4, "com.google.android.location.internal.CELL_LOCATION_STATUS"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    :cond_2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/j;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dropping intent receiver"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/server/j;->b:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 419
    const/4 v0, 0x1

    move v2, v0

    .line 420
    goto :goto_0

    .line 425
    :cond_4
    if-eqz v2, :cond_5

    .line 426
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    .line 428
    :cond_5
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/app/PendingIntent;IIZZLcom/google/android/location/p/j;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 129
    iget-wide v2, p0, Lcom/google/android/location/internal/server/i;->i:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/location/internal/server/i;->i:J

    .line 132
    :cond_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 134
    new-instance v7, Lcom/google/android/location/collectionlib/cy;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NLP PendingIntent client in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/location/collectionlib/cy;->b:[S

    invoke-direct {v7, v2, v3, v4}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[S)V

    .line 138
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 139
    new-instance v2, Lcom/google/android/location/internal/server/j;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/google/android/location/internal/server/j;-><init>(Lcom/google/android/location/internal/server/i;Landroid/app/PendingIntent;IILcom/google/android/location/collectionlib/cy;ZZLcom/google/android/location/p/j;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/internal/server/j;

    .line 143
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2}, Lcom/google/android/location/internal/server/j;->b()V

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    .line 155
    iget v2, p0, Lcom/google/android/location/internal/server/i;->j:I

    iget v3, p0, Lcom/google/android/location/internal/server/i;->k:I

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/location/internal/server/i;->a(Landroid/content/Context;II)V

    .line 156
    return-void
.end method

.method final a(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    .line 478
    const/4 v2, 0x0

    .line 481
    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 483
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    if-nez v0, :cond_0

    .line 485
    invoke-direct {p0}, Lcom/google/android/location/internal/server/i;->g()Landroid/content/Intent;

    move-result-object v0

    .line 486
    const-string v1, "providerEnabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    move-object v1, v0

    .line 488
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    .line 489
    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/internal/server/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 490
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dropping intent receiver"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 492
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    move-object v0, v1

    .line 494
    goto :goto_0

    .line 496
    :cond_2
    if-eqz v2, :cond_3

    .line 497
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    .line 499
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 12

    .prologue
    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 220
    iget-wide v0, p0, Lcom/google/android/location/internal/server/i;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 222
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "####NLP PendingIntent Location Client Stats: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 224
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 227
    const-string v0, "-Currently connected location PendingIntents-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 229
    iget-boolean v1, v0, Lcom/google/android/location/internal/server/j;->k:Z

    if-eqz v1, :cond_2

    move-object v1, v7

    .line 230
    :goto_2
    iget-object v2, v0, Lcom/google/android/location/internal/server/j;->f:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/location/internal/server/j;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    iget-wide v2, v0, Lcom/google/android/location/internal/server/j;->g:J

    sub-long v2, v10, v2

    .line 234
    iget-object v1, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/location/internal/server/j;->f:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/internal/server/k;

    .line 236
    if-eqz v1, :cond_0

    .line 237
    iget-boolean v4, v0, Lcom/google/android/location/internal/server/j;->k:Z

    if-eqz v4, :cond_3

    iget-object v1, v1, Lcom/google/android/location/internal/server/k;->b:Lcom/google/android/location/internal/server/o;

    .line 239
    :goto_3
    iget-object v1, v1, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    iget v4, v0, Lcom/google/android/location/internal/server/j;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 240
    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 244
    :cond_0
    new-instance v4, Lcom/google/android/location/internal/server/p;

    iget v1, v0, Lcom/google/android/location/internal/server/j;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, v0, Lcom/google/android/location/internal/server/j;->h:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Lcom/google/android/location/internal/server/p;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/location/internal/server/j;->f:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/google/android/location/internal/server/j;->k:Z

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/location/internal/server/i;->a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;Z)V

    goto :goto_1

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "totalTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/location/internal/server/i;->i:J

    sub-long v2, v10, v2

    invoke-static {v2, v3}, Lcom/google/android/location/internal/server/i;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v1, v8

    .line 229
    goto :goto_2

    .line 237
    :cond_3
    iget-object v1, v1, Lcom/google/android/location/internal/server/k;->a:Lcom/google/android/location/internal/server/o;

    goto :goto_3

    .line 249
    :cond_4
    const-string v0, "-Previous packages-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/k;

    .line 256
    iget-object v1, v0, Lcom/google/android/location/internal/server/k;->a:Lcom/google/android/location/internal/server/o;

    iget-object v1, v1, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/internal/server/p;

    .line 258
    invoke-static {v5, v4}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 260
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 263
    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/location/internal/server/i;->a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;Z)V

    goto :goto_4

    .line 267
    :cond_7
    iget-object v0, v0, Lcom/google/android/location/internal/server/k;->b:Lcom/google/android/location/internal/server/o;

    iget-object v0, v0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/location/internal/server/p;

    .line 269
    invoke-static {v5, v4}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 271
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 274
    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/location/internal/server/i;->a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;Z)V

    goto :goto_5

    .line 277
    :cond_9
    const-string v0, "####Finished NLP PendingIntent Location Client Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method final b()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/location/internal/server/i;->f:I

    return v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/location/internal/server/i;->g:I

    return v0
.end method

.method final d()Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->h:Lcom/google/android/location/p/j;

    return-object v0
.end method

.method final e()V
    .locals 2

    .prologue
    .line 173
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/server/i;->a:Ljava/lang/String;

    const-string v1, "Removing all location pending intents."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/j;->b()V

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/i;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method final f()Ljava/util/Map;
    .locals 8

    .prologue
    const v3, 0x7fffffff

    .line 311
    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/location/internal/server/i;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/j;

    .line 319
    iget-object v1, v0, Lcom/google/android/location/internal/server/j;->f:Ljava/lang/String;

    .line 320
    iget-object v1, v0, Lcom/google/android/location/internal/server/j;->j:Lcom/google/android/location/p/j;

    .line 322
    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Lcom/google/android/location/p/j;->c()Ljava/util/List;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_4

    move v2, v3

    .line 339
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 350
    if-nez v1, :cond_2

    .line 351
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 355
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 358
    :cond_3
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 336
    :cond_4
    iget v0, v0, Lcom/google/android/location/internal/server/j;->d:I

    move v2, v0

    goto :goto_0

    .line 364
    :cond_5
    return-object v4
.end method
