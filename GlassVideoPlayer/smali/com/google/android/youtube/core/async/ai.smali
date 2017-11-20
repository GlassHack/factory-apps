.class final Lcom/google/android/youtube/core/async/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/h;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "targetCallback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/h;

    .line 112
    iput-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Lcom/google/android/youtube/core/async/h;

    .line 114
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Lcom/google/android/youtube/core/async/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 149
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 118
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const-string v1, "start-index"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 119
    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const-string v2, "max-results"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    new-instance v2, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-direct {v2}, Lcom/google/android/youtube/core/model/Page$Builder;-><init>()V

    .line 122
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Page$Builder;->startIndex(I)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 123
    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->elementsPerPage(I)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 124
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Page$Builder;->totalResults(I)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 126
    if-lez v0, :cond_0

    .line 128
    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    const/4 v4, 0x0

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/google/android/youtube/core/async/af;->a(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Page$Builder;->previousUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 131
    :cond_0
    add-int v3, v0, v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 133
    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    add-int v4, v0, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4, v1}, Lcom/google/android/youtube/core/async/af;->a(Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/model/Page$Builder;->nextUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 136
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 139
    add-int/2addr v1, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 137
    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntries(Ljava/util/List;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ai;->a:Lcom/google/android/youtube/core/async/h;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Page$Builder;->build()Lcom/google/android/youtube/core/model/Page;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ai;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ai;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    return-void
.end method
