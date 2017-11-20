.class final Lcom/google/c/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/c/a/ai;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;B)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/c/a/ak;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 495
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 493
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 500
    instance-of v0, p1, Lcom/google/c/a/ak;

    if-eqz v0, :cond_0

    .line 501
    check-cast p1, Lcom/google/c/a/ak;

    .line 502
    iget-object v0, p0, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    iget-object v1, p1, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/c/a/ak;->a:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
