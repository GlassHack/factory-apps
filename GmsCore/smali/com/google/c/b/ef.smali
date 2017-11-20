.class final Lcom/google/c/b/ef;
.super Lcom/google/c/b/ck;


# instance fields
.field private synthetic b:Lcom/google/c/b/ch;


# direct methods
.method constructor <init>(Lcom/google/c/b/ch;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/b/ef;->b:Lcom/google/c/b/ch;

    invoke-direct {p0, p2}, Lcom/google/c/b/ck;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/ef;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/c/b/ed;

    iget-object v1, p0, Lcom/google/c/b/ef;->b:Lcom/google/c/b/ch;

    invoke-direct {v0, v1}, Lcom/google/c/b/ed;-><init>(Lcom/google/c/b/ch;)V

    return-object v0
.end method
