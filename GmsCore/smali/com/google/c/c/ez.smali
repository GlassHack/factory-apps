.class public abstract Lcom/google/c/c/ez;
.super Lcom/google/c/c/ia;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final transient a:Lcom/google/c/c/es;

.field private transient b:I


# direct methods
.method constructor <init>(Lcom/google/c/c/es;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/ia;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/ez;->a:Lcom/google/c/c/es;

    iput p2, p0, Lcom/google/c/c/ez;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/c/c/ez;->b:I

    return v0
.end method

.method public abstract a(Ljava/lang/Object;)Lcom/google/c/c/iw;
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/c/c/ez;->a(Ljava/lang/Object;)Lcom/google/c/c/iw;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ez;->a:Lcom/google/c/c/es;

    return-object v0
.end method

.method public final synthetic d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ez;->a:Lcom/google/c/c/es;

    invoke-virtual {v0}, Lcom/google/c/c/es;->e()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/ia;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/c/c/ia;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/ia;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/c/c/ia;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
