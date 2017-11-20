.class final Lcom/google/common/collect/dd;
.super Lcom/google/common/collect/jd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/common/collect/dd;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/jd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/google/common/collect/dd;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/common/collect/dd;->a:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/google/common/collect/de;

    invoke-direct {v0, p0}, Lcom/google/common/collect/de;-><init>(Lcom/google/common/collect/dd;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/common/collect/dd;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 405
    if-nez v0, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/dd;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 409
    const/4 v0, 0x1

    goto :goto_0
.end method
