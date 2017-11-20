.class final Lcom/google/android/youtube/core/async/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/ag;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/h;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ag;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/h;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 83
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ah;->c:Lcom/google/android/youtube/core/async/h;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/ah;->d:Ljava/util/List;

    .line 85
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->d:Ljava/util/List;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->a:Lcom/google/android/youtube/core/async/ag;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/ag;->a(Lcom/google/android/youtube/core/async/ag;)Lcom/google/android/youtube/core/async/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ah;->d:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ah;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ah;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 100
    return-void
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ah;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ah;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
