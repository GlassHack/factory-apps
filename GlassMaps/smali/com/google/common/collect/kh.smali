.class final Lcom/google/common/collect/kh;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/kg;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kg;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/google/common/collect/kh;->a:Lcom/google/common/collect/kg;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 1236
    new-instance v0, Lcom/google/common/collect/ki;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ki;-><init>(Lcom/google/common/collect/kh;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1232
    invoke-direct {p0, p1}, Lcom/google/common/collect/kh;->b(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
