.class final Lcom/google/common/collect/Lists$StringAsImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field hash:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 689
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    .line 690
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 724
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 739
    :goto_0
    return v0

    .line 727
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 728
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 729
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 730
    goto :goto_0

    .line 732
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 733
    :goto_1
    if-ge v2, v3, :cond_4

    .line 734
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 735
    instance-of v5, v0, Ljava/lang/Character;

    if-eqz v5, :cond_2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v5, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_3

    :cond_2
    move v0, v1

    .line 736
    goto :goto_0

    .line 733
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 739
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Character;
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(II)I

    .line 715
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 746
    iget v1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 747
    if-nez v1, :cond_1

    .line 748
    const/4 v1, 0x1

    .line 749
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 750
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_0
    iput v1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 754
    :cond_1
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 694
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 699
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ah;->a(III)V

    .line 705
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 682
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$StringAsImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
