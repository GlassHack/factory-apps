.class final Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final computingSupplier:Lcom/google/common/base/aw;


# direct methods
.method public constructor <init>(Lcom/google/common/base/aw;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    .line 173
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/aw;

    iput-object v0, p0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lcom/google/common/base/aw;

    .line 174
    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-static {p1}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;->computingSupplier:Lcom/google/common/base/aw;

    invoke-interface {v0}, Lcom/google/common/base/aw;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
