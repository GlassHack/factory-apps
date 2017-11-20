.class final Lcom/google/c/c/ey;
.super Lcom/google/c/c/iu;


# instance fields
.field private synthetic a:Lcom/google/c/c/eo;

.field private synthetic b:Lcom/google/c/c/ex;


# direct methods
.method constructor <init>(Lcom/google/c/c/ex;Lcom/google/c/c/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ey;->b:Lcom/google/c/c/ex;

    iput-object p2, p0, Lcom/google/c/c/ey;->a:Lcom/google/c/c/eo;

    invoke-direct {p0}, Lcom/google/c/c/iu;-><init>()V

    return-void
.end method


# virtual methods
.method final g()Lcom/google/c/c/iw;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ey;->b:Lcom/google/c/c/ex;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ey;->a:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
