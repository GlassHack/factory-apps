.class final Lcom/google/android/youtube/core/client/n;
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
    .line 1141
    iput-object p1, p0, Lcom/google/android/youtube/core/client/n;->a:Lcom/google/android/youtube/core/client/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/client/g;Lcom/google/android/youtube/core/client/n;)V
    .locals 0

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/client/n;-><init>(Lcom/google/android/youtube/core/client/g;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/a;)V
    .locals 5

    .prologue
    .line 1147
    iget-object v0, p2, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/LiveEvent;->video:Lcom/google/android/youtube/core/model/Video;

    .line 1149
    iget-object v1, p0, Lcom/google/android/youtube/core/client/n;->a:Lcom/google/android/youtube/core/client/g;

    invoke-static {v1}, Lcom/google/android/youtube/core/client/g;->a(Lcom/google/android/youtube/core/client/g;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 1150
    new-instance v2, Lcom/google/android/youtube/core/async/Timestamped;

    iget-wide v3, p2, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    .line 1148
    invoke-interface {p3, v1, v2}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1151
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/a;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/async/Timestamped;

    check-cast p3, Lcom/google/android/youtube/core/cache/a;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/client/n;->a(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped;Lcom/google/android/youtube/core/cache/a;)V

    return-void
.end method
