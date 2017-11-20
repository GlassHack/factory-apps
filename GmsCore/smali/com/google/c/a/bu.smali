.class final Lcom/google/c/a/bu;
.super Lcom/google/c/a/bi;


# instance fields
.field private b:Lcom/google/c/a/bi;

.field private c:Lcom/google/c/a/bi;


# direct methods
.method constructor <init>(Lcom/google/c/a/bi;Lcom/google/c/a/bi;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/a/bu;-><init>(Lcom/google/c/a/bi;Lcom/google/c/a/bi;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/c/a/bi;Lcom/google/c/a/bi;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/c/a/bi;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bi;

    iput-object v0, p0, Lcom/google/c/a/bu;->b:Lcom/google/c/a/bi;

    invoke-static {p2}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/a/bi;

    iput-object v0, p0, Lcom/google/c/a/bu;->c:Lcom/google/c/a/bi;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/c/a/bi;
    .locals 3

    new-instance v0, Lcom/google/c/a/bu;

    iget-object v1, p0, Lcom/google/c/a/bu;->b:Lcom/google/c/a/bi;

    iget-object v2, p0, Lcom/google/c/a/bu;->c:Lcom/google/c/a/bi;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/c/a/bu;-><init>(Lcom/google/c/a/bi;Lcom/google/c/a/bi;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(C)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/bu;->b:Lcom/google/c/a/bi;

    invoke-virtual {v0, p1}, Lcom/google/c/a/bi;->a(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/a/bu;->c:Lcom/google/c/a/bi;

    invoke-virtual {v0, p1}, Lcom/google/c/a/bi;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/c/a/bi;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
