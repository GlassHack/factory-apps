.class final Lcom/google/common/collect/fi;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fh;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fh;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/google/common/collect/fi;->a:Lcom/google/common/collect/fh;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 954
    new-instance v0, Lcom/google/common/collect/fj;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/fj;-><init>(Lcom/google/common/collect/fi;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 950
    invoke-direct {p0, p1}, Lcom/google/common/collect/fi;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
