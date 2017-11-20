.class abstract Lcom/google/c/c/iu;
.super Lcom/google/c/c/eo;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/eo;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/iu;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/iw;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/iu;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/c/iw;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract g()Lcom/google/c/c/iw;
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/iu;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/iw;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/iu;->g()Lcom/google/c/c/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/iw;->size()I

    move-result v0

    return v0
.end method
