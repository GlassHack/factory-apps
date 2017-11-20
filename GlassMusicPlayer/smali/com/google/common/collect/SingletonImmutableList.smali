.class final Lcom/google/common/collect/SingletonImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field final transient element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 90
    check-cast p1, Ljava/util/List;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(II)I

    .line 46
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/ol;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ej;->a(Ljava/lang/Object;)Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableList;->iterator()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/common/collect/SingletonImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final reverse()Lcom/google/common/collect/ImmutableList;
    .locals 0

    .prologue
    .line 76
    return-object p0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ai;->a(III)V

    .line 71
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/SingletonImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 127
    array-length v0, p1

    if-nez v0, :cond_1

    .line 128
    invoke-static {p1, v1}, Lcom/google/common/collect/kx;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 134
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 135
    return-object p1

    .line 129
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 130
    const/4 v0, 0x0

    aput-object v0, p1, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
