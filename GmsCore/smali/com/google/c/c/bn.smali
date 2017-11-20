.class abstract Lcom/google/c/c/bn;
.super Lcom/google/c/c/bl;
.source "SourceFile"


# instance fields
.field final a:[Ljava/lang/Object;

.field final c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/google/c/c/bl;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    .line 454
    iput p2, p0, Lcom/google/c/c/bn;->c:I

    .line 455
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/ek;
    .locals 2

    .prologue
    .line 469
    new-instance v0, Lcom/google/c/c/bo;

    iget-object v1, p0, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/bo;-><init>(Lcom/google/c/c/bn;I)V

    return-object v0
.end method

.method abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/google/c/c/bn;->c:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/c/c/bn;->a()Lcom/google/c/c/ek;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/google/c/c/bn;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/c/c/bn;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/c/c/bn;->size()I

    move-result v0

    .line 482
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 483
    invoke-static {p1, v0}, Lcom/google/c/c/cy;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 490
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/google/c/c/bn;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/c/c/bn;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 485
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 493
    :cond_2
    return-object p1
.end method
