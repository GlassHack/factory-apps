.class final Lcom/google/common/collect/ay;
.super Lcom/google/common/collect/oa;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ax;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ax;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/google/common/collect/ay;->a:Lcom/google/common/collect/ax;

    invoke-direct {p0, p2}, Lcom/google/common/collect/oa;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/nx;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 834
    invoke-interface {p0}, Lcom/google/common/collect/nx;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 830
    check-cast p1, Lcom/google/common/collect/nx;

    invoke-static {p1}, Lcom/google/common/collect/ay;->a(Lcom/google/common/collect/nx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
