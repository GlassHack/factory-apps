.class Lcom/google/common/base/StringUtil$CodePointSet;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/StringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodePointSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/StringUtil$CodePointSet$Builder;
    }
.end annotation


# instance fields
.field final elements:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final fastArray:[Z


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1853
    .local p1, "codePoints":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    iput-object p1, p0, Lcom/google/common/base/StringUtil$CodePointSet;->elements:Ljava/util/Set;

    .line 1855
    const/16 v1, 0x100

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet;->fastArray:[Z

    .line 1856
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet;->fastArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/google/common/base/StringUtil$CodePointSet;->fastArray:[Z

    iget-object v2, p0, Lcom/google/common/base/StringUtil$CodePointSet;->elements:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 1856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1859
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lcom/google/common/base/StringUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lcom/google/common/base/StringUtil$1;

    .prologue
    .line 1849
    invoke-direct {p0, p1}, Lcom/google/common/base/StringUtil$CodePointSet;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2
    .param p1, "codePoint"    # I

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet;->fastArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet;->fastArray:[Z

    aget-boolean v0, v0, p1

    .line 1865
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/base/StringUtil$CodePointSet;->elements:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method or(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet;
    .locals 1
    .param p1, "other"    # Lcom/google/common/base/StringUtil$CodePointSet;

    .prologue
    .line 1869
    new-instance v0, Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    invoke-direct {v0}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;-><init>()V

    .line 1870
    invoke-virtual {v0, p0}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addSet(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v0

    .line 1871
    invoke-virtual {v0, p1}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->addSet(Lcom/google/common/base/StringUtil$CodePointSet;)Lcom/google/common/base/StringUtil$CodePointSet$Builder;

    move-result-object v0

    .line 1872
    invoke-virtual {v0}, Lcom/google/common/base/StringUtil$CodePointSet$Builder;->create()Lcom/google/common/base/StringUtil$CodePointSet;

    move-result-object v0

    .line 1869
    return-object v0
.end method
