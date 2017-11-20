.class final Lcom/google/common/collect/EmptyImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/collect/EmptyImmutableList;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableList;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Ljava/util/List;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(II)I

    .line 86
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableList;->listIterator()Lcom/google/common/collect/om;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    const/4 v0, -0x1

    return v0
.end method

.method public final listIterator()Lcom/google/common/collect/om;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/om;

    return-object v0
.end method

.method public final listIterator(I)Lcom/google/common/collect/om;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->b(II)I

    .line 118
    sget-object v0, Lcom/google/common/collect/ej;->a:Lcom/google/common/collect/om;

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableList;->listIterator()Lcom/google/common/collect/om;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EmptyImmutableList;->listIterator(I)Lcom/google/common/collect/om;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public final reverse()Lcom/google/common/collect/ImmutableList;
    .locals 0

    .prologue
    .line 107
    return-object p0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ah;->a(III)V

    .line 102
    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/common/collect/kx;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 77
    array-length v0, p1

    if-lez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 80
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "[]"

    return-object v0
.end method
