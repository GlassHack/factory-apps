.class Lcom/google/common/base/StringUtil$CodePointSet$Builder;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil$CodePointSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field final codePoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1876
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method addCodePoint(I)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1880
    return-object p0
.end method

.method addRange(II)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1884
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1887
    :cond_0
    return-object p0
.end method

.method addSet(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    .locals 4
    .param p1, "set"    # Lcom/google/common/base/StringUtil$CodePointSet;

    .prologue
    .line 1891
    iget-object v1, p1, Lcom/google/common/base/StringUtil$CodePointSet;->elements:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1892
    .local v0, "i":I
    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1894
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method create()Lcom/google/common/base/StringUtil$CodePointSet;
    .locals 3

    .prologue
    .line 1898
    new-instance v0, Lcom/google/common/base/StringUtil$CodePointSet;

    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->codePoints:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/StringUtil$CodePointSet;-><init>(Ljava/util/Set;Lcom/google/common/base/StringUtil$1;)V

    return-object v0
.end method
