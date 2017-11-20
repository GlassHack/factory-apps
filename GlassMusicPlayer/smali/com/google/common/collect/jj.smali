.class final Lcom/google/common/collect/jj;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ji;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ji;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1537
    iput-object p1, p0, Lcom/google/common/collect/jj;->a:Lcom/google/common/collect/ji;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1541
    new-instance v0, Lcom/google/common/collect/jk;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/jk;-><init>(Lcom/google/common/collect/jj;Ljava/util/Map$Entry;)V

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1537
    check-cast p1, Ljava/util/Map$Entry;

    invoke-direct {p0, p1}, Lcom/google/common/collect/jj;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
