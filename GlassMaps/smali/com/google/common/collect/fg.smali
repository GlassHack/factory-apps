.class final Lcom/google/common/collect/fg;
.super Lcom/google/common/collect/ob;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ff;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ff;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/common/collect/fg;->a:Lcom/google/common/collect/ff;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ob;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 922
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->access$1100(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    check-cast p1, Lcom/google/common/collect/fq;

    invoke-static {p1}, Lcom/google/common/collect/fg;->a(Lcom/google/common/collect/fq;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
