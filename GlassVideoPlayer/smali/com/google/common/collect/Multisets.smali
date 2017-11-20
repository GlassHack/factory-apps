.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1082
    new-instance v0, Lcom/google/common/collect/kr;

    invoke-direct {v0}, Lcom/google/common/collect/kr;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 886
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 888
    invoke-interface {p0, p1}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v0

    .line 890
    sub-int v1, p2, v0

    .line 891
    if-lez v1, :cond_1

    .line 892
    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 893
    :cond_1
    if-gez v1, :cond_0

    .line 894
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/kp;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)I
    .locals 1

    .prologue
    .line 376
    instance-of v0, p0, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    .line 377
    check-cast p0, Lcom/google/common/collect/kp;

    invoke-interface {p0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/kp;)Lcom/google/common/collect/kp;
    .locals 2

    .prologue
    .line 71
    instance-of v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kp;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/kp;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;I)Lcom/google/common/collect/kq;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Lcom/google/common/collect/mf;)Lcom/google/common/collect/mf;
    .locals 2

    .prologue
    .line 207
    new-instance v1, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/mf;

    invoke-direct {v1, v0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/mf;)V

    return-object v1
.end method

.method static a(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1072
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "%s cannot be negative: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    return-void

    :cond_0
    move v0, v2

    .line 1072
    goto :goto_0
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 840
    :goto_0
    return v0

    .line 822
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_5

    .line 823
    check-cast p1, Lcom/google/common/collect/kp;

    .line 830
    invoke-interface {p0}, Lcom/google/common/collect/kp;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/kp;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 831
    goto :goto_0

    .line 833
    :cond_2
    invoke-interface {p1}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 834
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 835
    goto :goto_0

    :cond_4
    move v0, v1

    .line 838
    goto :goto_0

    :cond_5
    move v0, v2

    .line 840
    goto :goto_0
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 904
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 905
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 907
    invoke-interface {p0, p1}, Lcom/google/common/collect/kp;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 908
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/kp;->setCount(Ljava/lang/Object;I)I

    .line 909
    const/4 v0, 0x1

    .line 911
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 847
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const/4 v0, 0x0

    .line 858
    :goto_0
    return v0

    .line 850
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_1

    .line 851
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/kp;

    move-result-object v0

    .line 852
    invoke-interface {v0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 853
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/collect/kp;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 856
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ej;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 858
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/Iterable;)Lcom/google/common/collect/kp;
    .locals 0

    .prologue
    .line 1079
    check-cast p0, Lcom/google/common/collect/kp;

    return-object p0
.end method

.method static b(Lcom/google/common/collect/kp;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1013
    new-instance v0, Lcom/google/common/collect/kw;

    invoke-interface {p0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kw;-><init>(Lcom/google/common/collect/kp;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 865
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/kp;

    invoke-interface {p1}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 868
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/kp;)I
    .locals 6

    .prologue
    .line 1064
    const-wide/16 v0, 0x0

    .line 1065
    invoke-interface {p0}, Lcom/google/common/collect/kp;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kq;

    .line 1066
    invoke-interface {v0}, Lcom/google/common/collect/kq;->getCount()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    .line 1067
    goto :goto_0

    .line 1068
    :cond_0
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method static c(Lcom/google/common/collect/kp;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 875
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    instance-of v0, p1, Lcom/google/common/collect/kp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/kp;

    invoke-interface {p1}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 879
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/kp;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
