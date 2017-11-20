.class final Lcom/google/common/base/CharMatcher$AnyOf;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnyOf"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 1828
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1829
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    .line 1830
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1831
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 4
    .param p1, "table"    # Ljava/util/BitSet;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 1841
    iget-object v2, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-char v0, v2, v1

    .line 1842
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1844
    .end local v0    # "c":C
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CharMatcher.anyOf(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v1, "description":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/common/base/CharMatcher$AnyOf;->chars:[C

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 1850
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    .end local v0    # "c":C
    :cond_0
    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
