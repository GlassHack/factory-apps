.class final Lcom/google/common/collect/lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    check-cast p1, Lcom/google/common/collect/Range;

    invoke-static {p1}, Lcom/google/common/collect/lf;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Cut;

    move-result-object v0

    return-object v0
.end method
