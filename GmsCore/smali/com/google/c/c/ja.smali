.class final Lcom/google/c/c/ja;
.super Lcom/google/c/c/es;


# instance fields
.field private final transient a:Ljava/util/EnumMap;


# direct methods
.method constructor <init>(Ljava/util/EnumMap;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/c/c/es;-><init>()V

    iput-object p1, p0, Lcom/google/c/c/ja;->a:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/c/c/ja;)Ljava/util/EnumMap;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ja;->a:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ja;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final d()Lcom/google/c/c/fc;
    .locals 1

    new-instance v0, Lcom/google/c/c/jc;

    invoke-direct {v0, p0}, Lcom/google/c/c/jc;-><init>(Lcom/google/c/c/ja;)V

    return-object v0
.end method

.method final f()Lcom/google/c/c/fc;
    .locals 1

    new-instance v0, Lcom/google/c/c/jb;

    invoke-direct {v0, p0}, Lcom/google/c/c/jb;-><init>(Lcom/google/c/c/ja;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ja;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/ja;->a:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    return v0
.end method
