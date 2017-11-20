.class public abstract Lcom/google/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/gv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/common/collect/gv;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/collect/GenericMapMaker;->a:Lcom/google/common/collect/gv;

    sget-object v1, Lcom/google/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lcom/google/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gv;

    return-object v0
.end method

.method public abstract b()Ljava/util/concurrent/ConcurrentMap;
.end method
