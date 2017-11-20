.class final Lcom/google/c/c/jb;
.super Lcom/google/c/c/fc;


# instance fields
.field private synthetic a:Lcom/google/c/c/ja;


# direct methods
.method constructor <init>(Lcom/google/c/c/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/google/c/c/jb;->a:Lcom/google/c/c/ja;

    invoke-direct {p0}, Lcom/google/c/c/fc;-><init>()V

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

    iget-object v0, p0, Lcom/google/c/c/jb;->a:Lcom/google/c/c/ja;

    invoke-static {v0}, Lcom/google/c/c/ja;->a(Lcom/google/c/c/ja;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fp;->a(Ljava/util/Iterator;)Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/jb;->a:Lcom/google/c/c/ja;

    invoke-static {v0}, Lcom/google/c/c/ja;->a(Lcom/google/c/c/ja;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/c/jb;->b()Lcom/google/c/c/hi;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/c/c/jb;->a:Lcom/google/c/c/ja;

    invoke-virtual {v0}, Lcom/google/c/c/ja;->size()I

    move-result v0

    return v0
.end method
