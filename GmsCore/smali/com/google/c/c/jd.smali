.class final Lcom/google/c/c/jd;
.super Lcom/google/c/c/hi;


# instance fields
.field private final a:Ljava/util/Iterator;

.field private synthetic b:Lcom/google/c/c/jc;


# direct methods
.method constructor <init>(Lcom/google/c/c/jc;)V
    .locals 1

    iput-object p1, p0, Lcom/google/c/c/jd;->b:Lcom/google/c/c/jc;

    invoke-direct {p0}, Lcom/google/c/c/hi;-><init>()V

    iget-object v0, p0, Lcom/google/c/c/jd;->b:Lcom/google/c/c/jc;

    iget-object v0, v0, Lcom/google/c/c/jc;->a:Lcom/google/c/c/ja;

    invoke-static {v0}, Lcom/google/c/c/ja;->a(Lcom/google/c/c/ja;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/jd;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/jd;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/jd;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/c/c/gc;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
