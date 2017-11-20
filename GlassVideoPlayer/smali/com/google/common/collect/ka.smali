.class final Lcom/google/common/collect/ka;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/jz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jz;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/google/common/collect/ka;->a:Lcom/google/common/collect/jz;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;
    .locals 1

    .prologue
    .line 1835
    new-instance v0, Lcom/google/common/collect/kb;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/kb;-><init>(Lcom/google/common/collect/ka;Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1832
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ka;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/kq;

    move-result-object v0

    return-object v0
.end method
