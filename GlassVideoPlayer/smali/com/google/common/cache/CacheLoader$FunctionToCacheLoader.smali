.class final Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingFunction:Lcom/google/common/base/v;


# direct methods
.method public constructor <init>(Lcom/google/common/base/v;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    .line 143
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;->computingFunction:Lcom/google/common/base/v;

    .line 144
    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;->computingFunction:Lcom/google/common/base/v;

    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
