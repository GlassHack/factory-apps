.class final Lcom/google/common/collect/fp;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/fm;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fm;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/common/collect/fp;->a:Lcom/google/common/collect/fm;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/collect/fq;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    check-cast p1, Lcom/google/common/collect/fq;

    invoke-static {p1}, Lcom/google/common/collect/fp;->a(Lcom/google/common/collect/fq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
