.class public final Lcom/google/c/c/ay;
.super Lcom/google/c/c/ai;
.source "SourceFile"


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/c/c/ai;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/c/c/ay;->a:I

    .line 92
    return-void
.end method

.method public static l()Lcom/google/c/c/ay;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/google/c/c/ay;

    invoke-direct {v0}, Lcom/google/c/c/ay;-><init>()V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/c/c/ay;->a:I

    invoke-static {v0}, Lcom/google/c/c/dn;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/c/c/ai;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/c/c/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/c/c/ai;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/c/c/ai;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->c()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/c/c/ai;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->d()V

    return-void
.end method

.method public final bridge synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/c/c/ai;->e(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/c/c/ai;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic f()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/c/c/ai;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final j()Ljava/util/Set;
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/c/c/ay;->a:I

    invoke-static {v0}, Lcom/google/c/c/dn;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u_()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/c/c/ai;->u_()I

    move-result v0

    return v0
.end method
