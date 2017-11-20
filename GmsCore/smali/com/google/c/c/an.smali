.class final Lcom/google/c/c/an;
.super Lcom/google/c/c/cz;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/c/cz;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    .line 37
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 56
    if-ne p1, p0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/google/c/c/an;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/google/c/c/an;

    .line 61
    iget-object v0, p0, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/c/c/an;->a:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
