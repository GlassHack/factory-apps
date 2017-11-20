.class final Lcom/google/c/c/gf;
.super Lcom/google/c/c/hi;


# instance fields
.field private synthetic a:Lcom/google/c/c/hi;


# direct methods
.method constructor <init>(Lcom/google/c/c/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/gf;->a:Lcom/google/c/c/hi;

    invoke-direct {p0}, Lcom/google/c/c/hi;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gf;->a:Lcom/google/c/c/hi;

    invoke-virtual {v0}, Lcom/google/c/c/hi;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/gf;->a:Lcom/google/c/c/hi;

    invoke-virtual {v0}, Lcom/google/c/c/hi;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
