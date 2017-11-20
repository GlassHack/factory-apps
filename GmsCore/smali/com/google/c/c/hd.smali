.class final Lcom/google/c/c/hd;
.super Lcom/google/c/c/iv;


# instance fields
.field private transient a:Ljava/lang/Object;

.field private transient b:Ljava/lang/Object;

.field private transient c:Lcom/google/c/c/iv;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iv;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/c/iv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/c/iv;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/c/c/hd;->c:Lcom/google/c/c/iv;

    return-void
.end method

.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/c/c/hd;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final d()Lcom/google/c/c/fc;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/c/gc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method final f()Lcom/google/c/c/fc;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/lang/Object;)Lcom/google/c/c/fc;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()Lcom/google/c/c/iv;
    .locals 3

    iget-object v0, p0, Lcom/google/c/c/hd;->c:Lcom/google/c/c/iv;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/hd;

    iget-object v1, p0, Lcom/google/c/c/hd;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/c/c/hd;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/c/c/hd;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/c/iv;)V

    iput-object v0, p0, Lcom/google/c/c/hd;->c:Lcom/google/c/c/iv;

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
