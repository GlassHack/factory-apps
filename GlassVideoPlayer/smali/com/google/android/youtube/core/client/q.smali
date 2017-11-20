.class final Lcom/google/android/youtube/core/client/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/cache/k;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/g;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/client/g;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/google/android/youtube/core/client/q;->a:Lcom/google/android/youtube/core/client/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/client/g;Lcom/google/android/youtube/core/client/q;)V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/client/q;-><init>(Lcom/google/android/youtube/core/client/g;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/a;)V
    .locals 6

    .prologue
    .line 1118
    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/Page;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    return-void

    .line 1118
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 1120
    iget-object v2, p0, Lcom/google/android/youtube/core/client/q;->a:Lcom/google/android/youtube/core/client/g;

    invoke-static {v2}, Lcom/google/android/youtube/core/client/g;->a(Lcom/google/android/youtube/core/client/g;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/youtube/core/async/GDataRequest;->d:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    .line 1121
    new-instance v3, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v4, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    invoke-interface {p3, v2, v3}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    check-cast p3, Lcom/google/android/youtube/core/cache/a;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/client/q;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/a;)V

    return-void
.end method
