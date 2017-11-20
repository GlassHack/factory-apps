.class public final Lcom/google/c/c/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/c/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 953
    new-instance v0, Lcom/google/c/c/cr;

    invoke-direct {v0}, Lcom/google/c/c/cr;-><init>()V

    sput-object v0, Lcom/google/c/c/cq;->a:Lcom/google/c/c/cz;

    return-void
.end method

.method static a(Lcom/google/c/c/co;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 878
    new-instance v0, Lcom/google/c/c/cw;

    invoke-interface {p0}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/c/c/cw;-><init>(Lcom/google/c/c/co;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static a(Lcom/google/c/c/co;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 703
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 725
    :goto_0
    return v0

    .line 706
    :cond_0
    instance-of v0, p1, Lcom/google/c/c/co;

    if-eqz v0, :cond_5

    .line 707
    check-cast p1, Lcom/google/c/c/co;

    .line 714
    invoke-interface {p0}, Lcom/google/c/c/co;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/c/c/co;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 716
    goto :goto_0

    .line 718
    :cond_2
    invoke-interface {p1}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/cp;

    .line 719
    invoke-interface {v0}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/c/c/co;->a(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/c/c/cp;->b()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 720
    goto :goto_0

    :cond_4
    move v0, v1

    .line 723
    goto :goto_0

    :cond_5
    move v0, v2

    .line 725
    goto :goto_0
.end method

.method static a(Lcom/google/c/c/co;Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 733
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x0

    .line 744
    :goto_0
    return v0

    .line 736
    :cond_0
    instance-of v0, p1, Lcom/google/c/c/co;

    if-eqz v0, :cond_1

    .line 737
    check-cast p1, Lcom/google/c/c/co;

    .line 738
    invoke-interface {p1}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/cp;

    .line 739
    invoke-interface {v0}, Lcom/google/c/c/cp;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/c/c/cp;->b()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/c/c/co;->a(Ljava/lang/Object;I)I

    goto :goto_1

    .line 742
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/c/c/bv;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 744
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Lcom/google/c/c/co;)I
    .locals 5

    .prologue
    .line 935
    const-wide/16 v0, 0x0

    .line 936
    invoke-interface {p0}, Lcom/google/c/c/co;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/cp;

    .line 937
    invoke-interface {v0}, Lcom/google/c/c/cp;->b()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 938
    goto :goto_0

    .line 939
    :cond_0
    invoke-static {v2, v3}, Lcom/google/c/g/a;->a(J)I

    move-result v0

    return v0
.end method

.method static b(Lcom/google/c/c/co;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 752
    instance-of v0, p1, Lcom/google/c/c/co;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/c/co;

    invoke-interface {p1}, Lcom/google/c/c/co;->e()Ljava/util/Set;

    move-result-object p1

    .line 755
    :cond_0
    invoke-interface {p0}, Lcom/google/c/c/co;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/google/c/c/co;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 763
    instance-of v0, p1, Lcom/google/c/c/co;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/c/co;

    invoke-interface {p1}, Lcom/google/c/c/co;->e()Ljava/util/Set;

    move-result-object p1

    .line 766
    :cond_0
    invoke-interface {p0}, Lcom/google/c/c/co;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
