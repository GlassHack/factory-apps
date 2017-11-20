.class final Lcom/google/common/collect/fx;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 778
    iput-object p1, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    .line 779
    return-void
.end method

.method private a(I)Ljava/lang/Character;
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/google/common/collect/fx;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(II)I

    .line 784
    iget-object v0, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Lcom/google/common/collect/fx;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 840
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 855
    :goto_0
    return v0

    .line 843
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 844
    iget-object v0, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 845
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 846
    goto :goto_0

    .line 848
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 849
    :goto_1
    if-ge v2, v3, :cond_4

    .line 850
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 851
    instance-of v5, v0, Ljava/lang/Character;

    if-eqz v5, :cond_2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v5, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_3

    :cond_2
    move v0, v1

    .line 852
    goto :goto_0

    .line 849
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 855
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lcom/google/common/collect/fx;->a(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 831
    const/4 v1, 0x1

    .line 832
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 833
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    :cond_0
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 794
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 795
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 796
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 797
    iget-object v2, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    .line 802
    :goto_1
    return v0

    .line 796
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 807
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 808
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 809
    iget-object v0, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 810
    iget-object v2, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    .line 815
    :goto_1
    return v0

    .line 809
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 815
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/google/common/collect/fx;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ah;->a(III)V

    .line 826
    iget-object v0, p0, Lcom/google/common/collect/fx;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
