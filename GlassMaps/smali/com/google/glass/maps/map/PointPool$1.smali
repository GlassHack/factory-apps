.class final Lcom/google/glass/maps/map/PointPool$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final initialValue()Lcom/google/glass/maps/map/PointPool;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/maps/map/PointPool;

    invoke-direct {v0}, Lcom/google/glass/maps/map/PointPool;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/glass/maps/map/PointPool$1;->initialValue()Lcom/google/glass/maps/map/PointPool;

    move-result-object v0

    return-object v0
.end method
