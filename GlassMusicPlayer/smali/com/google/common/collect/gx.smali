.class final Lcom/google/common/collect/gx;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 844
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lcom/google/common/collect/ej;->a()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method
