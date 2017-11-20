.class final Lcom/google/common/collect/da;
.super Lcom/google/common/collect/jd;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$Inverse;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    invoke-direct {p0}, Lcom/google/common/collect/jd;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap$Inverse;Lcom/google/common/collect/cs;)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/google/common/collect/da;-><init>(Lcom/google/common/collect/HashBiMap$Inverse;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/google/common/collect/db;

    invoke-direct {v0, p0}, Lcom/google/common/collect/db;-><init>(Lcom/google/common/collect/da;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/ct;

    move-result-object v0

    .line 552
    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 556
    :goto_0
    return v0

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/ct;)V

    .line 556
    const/4 v0, 0x1

    goto :goto_0
.end method
