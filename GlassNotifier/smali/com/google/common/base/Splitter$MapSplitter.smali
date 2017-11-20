.class public final Lcom/google/common/base/Splitter$MapSplitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSplitter"
.end annotation


# static fields
.field private static final INVALID_ENTRY_MESSAGE:Ljava/lang/String; = "Chunk [%s] is not a valid entry"


# instance fields
.field private final entrySplitter:Lcom/google/common/base/Splitter;

.field private final outerSplitter:Lcom/google/common/base/Splitter;


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V
    .locals 1
    .param p1, "outerSplitter"    # Lcom/google/common/base/Splitter;
    .param p2, "entrySplitter"    # Lcom/google/common/base/Splitter;

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput-object p1, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    .line 469
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Splitter;

    iput-object v0, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    .line 470
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/base/Splitter;
    .param p2, "x1"    # Lcom/google/common/base/Splitter;
    .param p3, "x2"    # Lcom/google/common/base/Splitter$1;

    .prologue
    .line 462
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Splitter$MapSplitter;-><init>(Lcom/google/common/base/Splitter;Lcom/google/common/base/Splitter;)V

    return-void
.end method


# virtual methods
.method public split(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 10
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 484
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 485
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/google/common/base/Splitter$MapSplitter;->outerSplitter:Lcom/google/common/base/Splitter;

    invoke-virtual {v5, p1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 486
    .local v0, "entry":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/common/base/Splitter$MapSplitter;->entrySplitter:Lcom/google/common/base/Splitter;

    invoke-static {v5, v0}, Lcom/google/common/base/Splitter;->access$000(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v1

    .line 488
    .local v1, "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v5, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 489
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 490
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    const-string v9, "Duplicate key [%s] found."

    invoke-static {v5, v9, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 492
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v5, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 494
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_2
    const-string v9, "Chunk [%s] is not a valid entry"

    invoke-static {v5, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 490
    goto :goto_1

    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 496
    goto :goto_2

    .line 498
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "entryFields":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    return-object v5
.end method
