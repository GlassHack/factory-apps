.class final Lcom/google/common/collect/NullsLastOrdering;
.super Lcom/google/common/collect/Ordering;
.source "NullsLastOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final ordering:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    .local p1, "ordering":Lcom/google/common/collect/Ordering;, "Lcom/google/common/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    .line 30
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
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
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    if-nez p2, :cond_2

    .line 41
    const/4 v0, -0x1

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 72
    :goto_0
    return v1

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/NullsLastOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/google/common/collect/NullsLastOrdering;

    .line 70
    .local v0, "that":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    iget-object v2, v0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 72
    .end local v0    # "that":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x36e88db8    # -620324.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public nullsLast()Lcom/google/common/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    return-object p0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->nullsFirst()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/collect/NullsLastOrdering;, "Lcom/google/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/NullsLastOrdering;->ordering:Lcom/google/common/collect/Ordering;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsLast()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
