.class final Lcom/google/common/collect/Interners$StrongInterner;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/collect/Interner;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongInterner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Interner",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 1
    .param p1, "mapMaker"    # Lcom/google/common/collect/MapMaker;

    .prologue
    .line 116
    .local p0, "this":Lcom/google/common/collect/Interners$StrongInterner;, "Lcom/google/common/collect/Interners$StrongInterner<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Interners$StrongInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/MapMaker;
    .param p2, "x1"    # Lcom/google/common/collect/Interners$1;

    .prologue
    .line 112
    .local p0, "this":Lcom/google/common/collect/Interners$StrongInterner;, "Lcom/google/common/collect/Interners$StrongInterner<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Interners$StrongInterner;-><init>(Lcom/google/common/collect/MapMaker;)V

    return-void
.end method


# virtual methods
.method public intern(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/common/collect/Interners$StrongInterner;, "Lcom/google/common/collect/Interners$StrongInterner<TE;>;"
    .local p1, "sample":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Interners$StrongInterner;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "canonical":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .end local p1    # "sample":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "sample":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
