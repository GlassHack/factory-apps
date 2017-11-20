.class final Lcom/google/android/youtube/core/async/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/aq;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/youtube/core/async/h;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Lcom/google/android/youtube/core/async/h;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ar;->a:Lcom/google/android/youtube/core/async/aq;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ar;->b:Ljava/util/List;

    .line 140
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/h;

    .line 141
    iput-object p4, p0, Lcom/google/android/youtube/core/async/ar;->d:Ljava/util/Map;

    .line 142
    iput-object p5, p0, Lcom/google/android/youtube/core/async/ar;->e:Ljava/util/List;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Lcom/google/android/youtube/core/async/h;Ljava/util/Map;Ljava/util/List;Lcom/google/android/youtube/core/async/ar;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct/range {p0 .. p5}, Lcom/google/android/youtube/core/async/ar;-><init>(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Lcom/google/android/youtube/core/async/h;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/h;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ar;->b:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/h;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 163
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 11

    .prologue
    .line 146
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 147
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ar;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ar;->c:Lcom/google/android/youtube/core/async/h;

    .line 158
    iget-object v1, p0, Lcom/google/android/youtube/core/async/ar;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ar;->a:Lcom/google/android/youtube/core/async/aq;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/ar;->b:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/ar;->d:Ljava/util/Map;

    invoke-static {v2, v3, v5, v4}, Lcom/google/android/youtube/core/async/aq;->a(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 157
    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    return-void

    .line 148
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/BatchEntry;

    .line 150
    iget v2, v1, Lcom/google/android/youtube/core/model/BatchEntry;->b:I

    const/16 v6, 0xc8

    if-ne v2, v6, :cond_1

    .line 151
    iget-object v2, p0, Lcom/google/android/youtube/core/async/ar;->a:Lcom/google/android/youtube/core/async/aq;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/aq;->a(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/cache/a;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/youtube/core/async/ar;->a:Lcom/google/android/youtube/core/async/aq;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/aq;->b(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/async/GDataRequestFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v7

    .line 152
    new-instance v8, Lcom/google/android/youtube/core/async/Timestamped;

    iget-object v2, v1, Lcom/google/android/youtube/core/model/BatchEntry;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    iget-object v9, p0, Lcom/google/android/youtube/core/async/ar;->a:Lcom/google/android/youtube/core/async/aq;

    invoke-static {v9}, Lcom/google/android/youtube/core/async/aq;->c(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/utils/a;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v9

    invoke-direct {v8, v2, v9, v10}, Lcom/google/android/youtube/core/async/Timestamped;-><init>(Ljava/lang/Object;J)V

    .line 151
    invoke-interface {v6, v7, v8}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    :cond_1
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/ar;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    return-void
.end method
