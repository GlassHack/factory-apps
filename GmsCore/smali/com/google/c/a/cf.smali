.class public final Lcom/google/c/a/cf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/c/a/cg;

.field private c:Lcom/google/c/a/cg;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/c/a/cg;

    invoke-direct {v0, v1}, Lcom/google/c/a/cg;-><init>(B)V

    iput-object v0, p0, Lcom/google/c/a/cf;->b:Lcom/google/c/a/cg;

    iget-object v0, p0, Lcom/google/c/a/cf;->b:Lcom/google/c/a/cg;

    iput-object v0, p0, Lcom/google/c/a/cf;->c:Lcom/google/c/a/cg;

    iput-boolean v1, p0, Lcom/google/c/a/cf;->d:Z

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/c/a/cf;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/c/a/cf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;F)Lcom/google/c/a/cf;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/c/a/cf;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/c/a/cf;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;
    .locals 2

    new-instance v1, Lcom/google/c/a/cg;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/c/a/cg;-><init>(B)V

    iget-object v0, p0, Lcom/google/c/a/cf;->c:Lcom/google/c/a/cg;

    iput-object v1, v0, Lcom/google/c/a/cg;->c:Lcom/google/c/a/cg;

    iput-object v1, p0, Lcom/google/c/a/cf;->c:Lcom/google/c/a/cg;

    iput-object p2, v1, Lcom/google/c/a/cg;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/c/a/cg;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/google/c/a/cf;
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/c/a/cf;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/c/a/cf;->b:Lcom/google/c/a/cg;

    iget-object v0, v0, Lcom/google/c/a/cg;->c:Lcom/google/c/a/cg;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    iget-object v3, v0, Lcom/google/c/a/cg;->a:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/c/a/cg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, v0, Lcom/google/c/a/cg;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/c/a/cg;->c:Lcom/google/c/a/cg;

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
