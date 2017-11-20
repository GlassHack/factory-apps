.class final Lcom/google/c/c/ew;
.super Lcom/google/c/c/iu;


# instance fields
.field private synthetic a:Lcom/google/c/c/eo;

.field private synthetic b:Lcom/google/c/c/ev;


# direct methods
.method constructor <init>(Lcom/google/c/c/ev;Lcom/google/c/c/eo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/ew;->b:Lcom/google/c/c/ev;

    iput-object p2, p0, Lcom/google/c/c/ew;->a:Lcom/google/c/c/eo;

    invoke-direct {p0}, Lcom/google/c/c/iu;-><init>()V

    return-void
.end method


# virtual methods
.method final g()Lcom/google/c/c/iw;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ew;->b:Lcom/google/c/c/ev;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ew;->a:Lcom/google/c/c/eo;

    invoke-virtual {v0, p1}, Lcom/google/c/c/eo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
