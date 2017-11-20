.class final Lcom/google/common/cache/l;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 983
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1004
    invoke-static {}, Lcom/google/common/collect/ej;->a()Lcom/google/common/collect/ol;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 994
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method
