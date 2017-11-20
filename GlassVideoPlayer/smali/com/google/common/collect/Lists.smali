.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Ljava/util/List;ILjava/lang/Iterable;)Z
    .locals 4

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1080
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1081
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1082
    const/4 v0, 0x1

    .line 1083
    goto :goto_0

    .line 1084
    :cond_0
    return v0
.end method

.method public static asList(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 320
    new-instance v0, Lcom/google/common/collect/Lists$TwoPlusArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Lists$TwoPlusArrayList;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 273
    new-instance v0, Lcom/google/common/collect/Lists$OnePlusArrayList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$OnePlusArrayList;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static cartesianProduct(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 415
    invoke-static {p0}, Lcom/google/common/collect/ba;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static varargs cartesianProduct([Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 475
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->cartesianProduct(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0

    .prologue
    .line 1201
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2

    .prologue
    .line 679
    new-instance v1, Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$StringAsImmutableList;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .prologue
    .line 771
    new-instance v1, Lcom/google/common/collect/fx;

    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lcom/google/common/collect/fx;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static computeArrayListCapacity(I)I
    .locals 4

    .prologue
    .line 106
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 109
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1062
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1071
    :cond_0
    :goto_0
    return v0

    .line 1065
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 1066
    goto :goto_0

    .line 1069
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 1071
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/ej;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static hashCodeImpl(Ljava/util/List;)I
    .locals 4

    .prologue
    .line 1048
    const/4 v0, 0x1

    .line 1049
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1050
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 1052
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 1054
    goto :goto_0

    .line 1050
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1055
    :cond_1
    return v0
.end method

.method static indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1091
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1092
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    .line 1097
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1104
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1105
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 1110
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static listIteratorImpl(Ljava/util/List;I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 1117
    new-instance v0, Lcom/google/common/collect/fw;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fw;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/fw;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 124
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/bb;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 101
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 172
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newArrayListWithExpectedSize(I)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->computeArrayListCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2

    .prologue
    .line 251
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/bb;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 253
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 251
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 220
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    return-object v0
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 625
    invoke-static {p0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ah;->a(Z)V

    .line 627
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/ga;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ga;-><init>(Ljava/util/List;I)V

    :goto_1
    return-object v0

    .line 626
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 627
    :cond_1
    new-instance v0, Lcom/google/common/collect/fy;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fy;-><init>(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 872
    instance-of v0, p0, Lcom/google/common/collect/gc;

    if-eqz v0, :cond_0

    .line 873
    check-cast p0, Lcom/google/common/collect/gc;

    invoke-virtual {p0}, Lcom/google/common/collect/gc;->a()Ljava/util/List;

    move-result-object v0

    .line 877
    :goto_0
    return-object v0

    .line 874
    :cond_0
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    .line 875
    new-instance v0, Lcom/google/common/collect/gb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gb;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 877
    :cond_1
    new-instance v0, Lcom/google/common/collect/gc;

    invoke-direct {v0, p0}, Lcom/google/common/collect/gc;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method static subListImpl(Ljava/util/List;II)Ljava/util/List;
    .locals 1

    .prologue
    .line 1125
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 1126
    new-instance v0, Lcom/google/common/collect/fu;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fu;-><init>(Ljava/util/List;)V

    .line 1144
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_0
    new-instance v0, Lcom/google/common/collect/fv;

    invoke-direct {v0, p0}, Lcom/google/common/collect/fv;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/v;)Ljava/util/List;
    .locals 1

    .prologue
    .line 512
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/base/v;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/google/common/base/v;)V

    goto :goto_0
.end method
