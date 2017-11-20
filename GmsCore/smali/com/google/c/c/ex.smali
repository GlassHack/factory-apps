.class final Lcom/google/c/c/ex;
.super Lcom/google/c/c/iw;


# instance fields
.field private final a:Lcom/google/c/c/es;


# direct methods
.method constructor <init>(Lcom/google/c/c/es;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iw;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/ex;->a:Lcom/google/c/c/es;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/google/c/c/hi;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ex;->a:Lcom/google/c/c/es;

    invoke-virtual {v0}, Lcom/google/c/c/es;->c()Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->b()Lcom/google/c/c/hi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/gc;->a(Lcom/google/c/c/hi;)Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ex;->a:Lcom/google/c/c/es;

    invoke-virtual {v0, p1}, Lcom/google/c/c/es;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/ex;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ex;->a:Lcom/google/c/c/es;

    invoke-virtual {v0}, Lcom/google/c/c/es;->size()I

    move-result v0

    return v0
.end method

.method final w_()Lcom/google/c/c/eo;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/ex;->a:Lcom/google/c/c/es;

    invoke-virtual {v0}, Lcom/google/c/c/es;->c()Lcom/google/c/c/fc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/c/fc;->e()Lcom/google/c/c/eo;

    move-result-object v0

    new-instance v1, Lcom/google/c/c/ey;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/ey;-><init>(Lcom/google/c/c/ex;Lcom/google/c/c/eo;)V

    return-object v1
.end method
