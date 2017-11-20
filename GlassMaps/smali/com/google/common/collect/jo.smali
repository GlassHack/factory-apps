.class final Lcom/google/common/collect/jo;
.super Lcom/google/common/collect/ch;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/jn;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jn;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/google/common/collect/jo;->b:Lcom/google/common/collect/jn;

    iput-object p2, p0, Lcom/google/common/collect/jo;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/ch;-><init>()V

    return-void
.end method

.method private b()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1067
    invoke-super {p0}, Lcom/google/common/collect/ch;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/common/collect/jo;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/google/common/collect/jo;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1064
    invoke-direct {p0}, Lcom/google/common/collect/jo;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
