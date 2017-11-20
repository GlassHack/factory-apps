.class public Lcom/google/common/base/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Pair$SecondComparator;,
        Lcom/google/common/base/Pair$FirstComparator;,
        Lcom/google/common/base/Pair$PairSecondFunction;,
        Lcom/google/common/base/Pair$PairFirstFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa60d052d8237f63L


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    .local p1, "first":Ljava/lang/Object;, "TA;"
    .local p2, "second":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/common/base/Pair;->first:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, Lcom/google/common/base/Pair;->second:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public static compareByFirst()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Comparable;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/google/common/base/Pair$FirstComparator;->FIRST_COMPARATOR:Lcom/google/common/base/Pair$FirstComparator;

    return-object v0
.end method

.method public static compareBySecond()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 164
    sget-object v0, Lcom/google/common/base/Pair$SecondComparator;->SECOND_COMPARATOR:Lcom/google/common/base/Pair$SecondComparator;

    return-object v0
.end method

.method public static firstFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;TA;>;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/google/common/base/Pair$PairFirstFunction;->INSTANCE:Lcom/google/common/base/Pair$PairFirstFunction;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/Pair;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "first":Ljava/lang/Object;, "TA;"
    .local p1, "second":Ljava/lang/Object;, "TB;"
    new-instance v0, Lcom/google/common/base/Pair;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static secondFunction()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/base/Pair",
            "<TA;TB;>;TB;>;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/google/common/base/Pair$PairSecondFunction;->INSTANCE:Lcom/google/common/base/Pair$PairSecondFunction;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    const/4 v1, 0x0

    .line 208
    instance-of v2, p1, Lcom/google/common/base/Pair;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/google/common/base/Pair;

    .line 210
    .local v0, "that":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<**>;"
    invoke-virtual {p0}, Lcom/google/common/base/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/base/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 213
    .end local v0    # "that":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<**>;"
    :cond_0
    return v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Pair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Pair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    const/4 v2, 0x0

    .line 218
    iget-object v3, p0, Lcom/google/common/base/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_0

    move v0, v2

    .line 219
    .local v0, "hash1":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/base/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v1, v2

    .line 220
    .local v1, "hash2":I
    :goto_1
    mul-int/lit8 v2, v0, 0x1f

    add-int/2addr v2, v1

    return v2

    .line 218
    .end local v0    # "hash1":I
    .end local v1    # "hash2":I
    :cond_0
    iget-object v3, p0, Lcom/google/common/base/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 219
    .restart local v0    # "hash1":I
    :cond_1
    iget-object v2, p0, Lcom/google/common/base/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    .local p0, "this":Lcom/google/common/base/Pair;, "Lcom/google/common/base/Pair<TA;TB;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
