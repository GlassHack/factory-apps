.class final Lcom/google/common/collect/cu;
.super Lcom/google/common/collect/in;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/in;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cs;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/google/common/collect/cu;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/google/common/collect/cv;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cv;-><init>(Lcom/google/common/collect/cu;)V

    return-object v0
.end method
