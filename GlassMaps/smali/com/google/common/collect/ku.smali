.class final Lcom/google/common/collect/ku;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/kt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kt;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/kq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 944
    invoke-interface {p0}, Lcom/google/common/collect/kq;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 940
    check-cast p1, Lcom/google/common/collect/kq;

    invoke-static {p1}, Lcom/google/common/collect/ku;->a(Lcom/google/common/collect/kq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
