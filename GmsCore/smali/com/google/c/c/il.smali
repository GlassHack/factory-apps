.class final Lcom/google/c/c/il;
.super Lcom/google/c/c/fi;


# instance fields
.field private final transient a:Lcom/google/c/c/fk;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/fi;-><init>()V

    invoke-static {p1}, Lcom/google/c/c/fk;->a(Ljava/util/Comparator;)Lcom/google/c/c/fk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/il;->a:Lcom/google/c/c/fk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/c/c/fi;
    .locals 0

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/c/c/fi;
    .locals 0

    invoke-static {p1}, Lcom/google/c/a/cj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lcom/google/c/c/fc;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/c/c/fc;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic e()Lcom/google/c/c/fc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/il;->a:Lcom/google/c/c/fk;

    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/google/c/c/fc;->d()Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/c/c/iw;
    .locals 1

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/c/c/fk;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/il;->a:Lcom/google/c/c/fk;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/il;->a:Lcom/google/c/c/fk;

    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    return-object v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-static {}, Lcom/google/c/c/eo;->v_()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method
