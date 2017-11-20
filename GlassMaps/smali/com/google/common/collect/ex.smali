.class final Lcom/google/common/collect/ex;
.super Lcom/google/common/collect/ma;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ez;


# instance fields
.field a:[Lcom/google/common/collect/ew;

.field final synthetic b:Lcom/google/common/collect/LinkedHashMultimap;

.field private final c:Ljava/lang/Object;

.field private d:I

.field private e:I

.field private f:Lcom/google/common/collect/ez;

.field private g:Lcom/google/common/collect/ez;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 330
    iput-object p1, p0, Lcom/google/common/collect/ex;->b:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/ma;-><init>()V

    .line 322
    iput v0, p0, Lcom/google/common/collect/ex;->d:I

    .line 323
    iput v0, p0, Lcom/google/common/collect/ex;->e:I

    .line 331
    iput-object p2, p0, Lcom/google/common/collect/ex;->c:Ljava/lang/Object;

    .line 332
    iput-object p0, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    .line 333
    iput-object p0, p0, Lcom/google/common/collect/ex;->g:Lcom/google/common/collect/ez;

    .line 335
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p3, v0, v1}, Lcom/google/common/collect/df;->a(ID)I

    move-result v0

    .line 338
    new-array v0, v0, [Lcom/google/common/collect/ew;

    .line 339
    iput-object v0, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    .line 340
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ex;)Lcom/google/common/collect/ez;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/ex;)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/ex;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/common/collect/ex;)I
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/ex;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/ex;->d:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 457
    iget v0, p0, Lcom/google/common/collect/ex;->d:I

    iget-object v1, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/df;->a(IID)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [Lcom/google/common/collect/ew;

    .line 460
    iput-object v2, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    .line 461
    array-length v0, v2

    add-int/lit8 v3, v0, -0x1

    .line 462
    iget-object v1, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    :goto_0
    if-eq v1, p0, :cond_0

    move-object v0, v1

    .line 464
    check-cast v0, Lcom/google/common/collect/ew;

    .line 465
    iget v4, v0, Lcom/google/common/collect/ew;->c:I

    invoke-static {v4}, Lcom/google/common/collect/df;->a(I)I

    move-result v4

    and-int/2addr v4, v3

    .line 466
    aget-object v5, v2, v4

    iput-object v5, v0, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    .line 467
    aput-object v0, v2, v4

    .line 462
    invoke-interface {v1}, Lcom/google/common/collect/ez;->b()Lcom/google/common/collect/ez;

    move-result-object v1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/ex;)I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/google/common/collect/ex;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ex;->e:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ez;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/common/collect/ex;->g:Lcom/google/common/collect/ez;

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/common/collect/ex;->g:Lcom/google/common/collect/ez;

    .line 352
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 434
    if-nez p1, :cond_0

    move v0, v1

    .line 435
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/df;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v4, v2, v3

    .line 437
    iget-object v2, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    aget-object v3, v2, v4

    move-object v2, v3

    .line 438
    :goto_1
    if-eqz v2, :cond_2

    .line 439
    iget v5, v2, Lcom/google/common/collect/ew;->c:I

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 453
    :goto_2
    return v1

    .line 434
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 438
    :cond_1
    iget-object v2, v2, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    goto :goto_1

    .line 444
    :cond_2
    new-instance v1, Lcom/google/common/collect/ew;

    iget-object v2, p0, Lcom/google/common/collect/ex;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v0, v3}, Lcom/google/common/collect/ew;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/ew;)V

    .line 445
    iget-object v0, p0, Lcom/google/common/collect/ex;->g:Lcom/google/common/collect/ez;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V

    .line 446
    invoke-static {v1, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ex;->b:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ew;->c()Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 448
    iget-object v0, p0, Lcom/google/common/collect/ex;->b:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$600(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/ew;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$700(Lcom/google/common/collect/ew;Lcom/google/common/collect/ew;)V

    .line 449
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    aput-object v1, v0, v4

    .line 450
    iget v0, p0, Lcom/google/common/collect/ex;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ex;->d:I

    .line 451
    iget v0, p0, Lcom/google/common/collect/ex;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ex;->e:I

    .line 452
    invoke-direct {p0}, Lcom/google/common/collect/ex;->c()V

    .line 453
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public final b()Lcom/google/common/collect/ez;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    return-object v0
.end method

.method public final b(Lcom/google/common/collect/ez;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    .line 356
    return-void
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ex;->d:I

    .line 500
    iget-object v1, p0, Lcom/google/common/collect/ex;->f:Lcom/google/common/collect/ez;

    :goto_0
    if-eq v1, p0, :cond_0

    move-object v0, v1

    .line 502
    check-cast v0, Lcom/google/common/collect/ew;

    .line 503
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/ew;)V

    .line 500
    invoke-interface {v1}, Lcom/google/common/collect/ez;->b()Lcom/google/common/collect/ez;

    move-result-object v1

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->access$500(Lcom/google/common/collect/ez;Lcom/google/common/collect/ez;)V

    .line 506
    iget v0, p0, Lcom/google/common/collect/ex;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ex;->e:I

    .line 507
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 421
    if-nez p1, :cond_1

    move v0, v1

    .line 422
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/df;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 424
    iget-object v3, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    aget-object v2, v3, v2

    :goto_1
    if-eqz v2, :cond_0

    .line 425
    iget v3, v2, Lcom/google/common/collect/ew;->c:I

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 426
    const/4 v1, 0x1

    .line 429
    :cond_0
    return v1

    .line 421
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 424
    :cond_2
    iget-object v2, v2, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    goto :goto_1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/google/common/collect/ey;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ey;-><init>(Lcom/google/common/collect/ex;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 474
    if-nez p1, :cond_1

    move v0, v1

    .line 475
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/df;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v4, v2, v3

    .line 477
    const/4 v3, 0x0

    .line 478
    iget-object v2, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    aget-object v2, v2, v4

    :goto_1
    if-eqz v2, :cond_0

    .line 479
    iget v5, v2, Lcom/google/common/collect/ew;->c:I

    if-ne v0, v5, :cond_3

    invoke-virtual {v2}, Lcom/google/common/collect/ew;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    if-nez v3, :cond_2

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/ex;->a:[Lcom/google/common/collect/ew;

    iget-object v1, v2, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    aput-object v1, v0, v4

    .line 486
    :goto_2
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$200(Lcom/google/common/collect/ez;)V

    .line 487
    invoke-static {v2}, Lcom/google/common/collect/LinkedHashMultimap;->access$300(Lcom/google/common/collect/ew;)V

    .line 488
    iget v0, p0, Lcom/google/common/collect/ex;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ex;->d:I

    .line 489
    iget v0, p0, Lcom/google/common/collect/ex;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ex;->e:I

    .line 490
    const/4 v1, 0x1

    .line 493
    :cond_0
    return v1

    .line 474
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, v2, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    iput-object v0, v3, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    goto :goto_2

    .line 478
    :cond_3
    iget-object v3, v2, Lcom/google/common/collect/ew;->d:Lcom/google/common/collect/ew;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lcom/google/common/collect/ex;->d:I

    return v0
.end method
