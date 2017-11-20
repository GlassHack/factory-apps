.class final Lcom/google/common/collect/cw;
.super Lcom/google/common/collect/aa;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/ct;

.field final synthetic b:Lcom/google/common/collect/cv;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cv;Lcom/google/common/collect/ct;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    .line 444
    iput-object p2, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    .line 445
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget-object v3, v0, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    .line 460
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v4

    .line 461
    iget-object v0, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget v0, v0, Lcom/google/common/collect/ct;->d:I

    if-ne v4, v0, :cond_0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-object p1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v0, v0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cu;

    iget-object v0, v0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0, p1, v4}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v5, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v0, v0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cu;

    iget-object v0, v0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 466
    new-instance v0, Lcom/google/common/collect/ct;

    iget-object v1, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    iget v2, v2, Lcom/google/common/collect/ct;->b:I

    invoke-direct {v0, v1, v2, p1, v4}, Lcom/google/common/collect/ct;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 468
    iget-object v1, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v1, v1, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cu;

    iget-object v1, v1, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$800(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 469
    iget-object v1, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v2, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v2, v2, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cu;

    iget-object v2, v2, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v2

    iput v2, v1, Lcom/google/common/collect/cv;->e:I

    .line 470
    iget-object v1, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iget-object v1, v1, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    iget-object v2, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    if-ne v1, v2, :cond_1

    .line 471
    iget-object v1, p0, Lcom/google/common/collect/cw;->b:Lcom/google/common/collect/cv;

    iput-object v0, v1, Lcom/google/common/collect/cv;->d:Lcom/google/common/collect/ct;

    .line 473
    :cond_1
    iput-object v0, p0, Lcom/google/common/collect/cw;->a:Lcom/google/common/collect/ct;

    move-object p1, v3

    .line 474
    goto :goto_0

    :cond_2
    move v0, v2

    .line 464
    goto :goto_1
.end method
