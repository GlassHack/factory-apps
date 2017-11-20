.class final Lcom/google/common/collect/ky;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 246
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lcom/google/common/collect/lc;->a(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/kz;

    invoke-direct {v1, p0}, Lcom/google/common/collect/kz;-><init>(Lcom/google/common/collect/ky;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMaker;->a(Lcom/google/common/base/w;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ky;->a:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 294
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 259
    if-ne p1, p2, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    if-eqz p1, :cond_0

    .line 263
    if-nez p2, :cond_2

    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ky;->a(Ljava/lang/Object;)I

    move-result v2

    .line 267
    invoke-static {p2}, Lcom/google/common/collect/ky;->a(Ljava/lang/Object;)I

    move-result v3

    .line 268
    if-eq v2, v3, :cond_3

    .line 269
    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ky;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/common/collect/ky;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 274
    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
