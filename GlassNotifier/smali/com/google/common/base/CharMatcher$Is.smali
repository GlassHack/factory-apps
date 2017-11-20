.class final Lcom/google/common/base/CharMatcher$Is;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Is"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "match"    # C

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1708
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    .line 1709
    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 1723
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/google/common/base/CharMatcher$Is;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/base/CharMatcher$Is;
    :cond_0
    invoke-static {}, Lcom/google/common/base/CharMatcher$Is;->none()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    goto :goto_0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1713
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 1733
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$Is;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 1728
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "other":Lcom/google/common/base/CharMatcher;
    :goto_0
    return-object p1

    .restart local p1    # "other":Lcom/google/common/base/CharMatcher;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    goto :goto_0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 2
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # C

    .prologue
    .line 1718
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 1739
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1740
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1744
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$Is;->match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
