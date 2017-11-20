.class public final Lcom/google/android/youtube/core/async/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/cache/a;

.field private final b:Lcom/google/android/youtube/core/async/ae;

.field private final c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

.field private final d:Lcom/google/android/youtube/core/utils/a;

.field private final e:J


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/a;J)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "videoCache can not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/aq;->a:Lcom/google/android/youtube/core/cache/a;

    .line 42
    const-string v0, "targetRequester can not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/ae;

    .line 41
    iput-object v0, p0, Lcom/google/android/youtube/core/async/aq;->b:Lcom/google/android/youtube/core/async/ae;

    .line 44
    const-string v0, "gdataRequestFactory can not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 43
    iput-object v0, p0, Lcom/google/android/youtube/core/async/aq;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 45
    const-string v0, "clock can not be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/a;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/aq;->d:Lcom/google/android/youtube/core/utils/a;

    .line 46
    iput-wide p5, p0, Lcom/google/android/youtube/core/async/aq;->e:J

    .line 47
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 6

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v0, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "<feed xmlns=\'http://www.w3.org/2005/Atom\' xmlns:batch=\'http://schemas.google.com/gdata/batch\' xmlns:yt=\'http://gdata.youtube.com/schemas/2007\'>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "<batch:operation type=\'query\'/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "videos"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "</feed>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 121
    const-string v2, "videos"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 122
    const-string v2, "batch"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->e(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;[B)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    const-string v4, "<entry>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<id>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</id>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "</entry>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/a;J)Lcom/google/android/youtube/core/async/ae;
    .locals 7

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/youtube/core/async/aq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/async/aq;-><init>(Lcom/google/android/youtube/core/cache/a;Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/GDataRequestFactory;Lcom/google/android/youtube/core/utils/a;J)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/cache/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aq;->a:Lcom/google/android/youtube/core/cache/a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .prologue
    .line 86
    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/core/async/aq;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 4

    .prologue
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 89
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    invoke-direct {v3}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v3, v0}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->setResult(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->setStatusCode(I)Lcom/google/android/youtube/core/model/BatchEntry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->build()Lcom/google/android/youtube/core/model/BatchEntry;

    move-result-object v0

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/BatchEntry;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/google/android/youtube/core/async/h;)V
    .locals 12

    .prologue
    .line 61
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 62
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 77
    invoke-static {p1, v4, v0}, Lcom/google/android/youtube/core/async/aq;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/google/android/youtube/core/async/h;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    :goto_1
    return-void

    .line 64
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/google/android/youtube/core/async/aq;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/async/GDataRequestFactory;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    .line 66
    iget-object v3, p0, Lcom/google/android/youtube/core/async/aq;->a:Lcom/google/android/youtube/core/cache/a;

    invoke-interface {v3, v1}, Lcom/google/android/youtube/core/cache/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/async/Timestamped;

    .line 67
    iget-object v3, p0, Lcom/google/android/youtube/core/async/aq;->d:Lcom/google/android/youtube/core/utils/a;

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/a;->a()J

    move-result-wide v6

    .line 68
    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    .line 69
    iget-wide v8, v1, Lcom/google/android/youtube/core/async/Timestamped;->timestamp:J

    iget-wide v10, p0, Lcom/google/android/youtube/core/async/aq;->e:J

    add-long/2addr v8, v10

    cmp-long v3, v8, v6

    if-ltz v3, :cond_1

    .line 70
    iget-object v1, v1, Lcom/google/android/youtube/core/async/Timestamped;->element:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_2
    iget-object v7, p0, Lcom/google/android/youtube/core/async/aq;->b:Lcom/google/android/youtube/core/async/ae;

    .line 81
    invoke-static {v5}, Lcom/google/android/youtube/core/async/aq;->a(Ljava/util/List;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    .line 82
    new-instance v0, Lcom/google/android/youtube/core/async/ar;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/async/ar;-><init>(Lcom/google/android/youtube/core/async/aq;Ljava/util/List;Lcom/google/android/youtube/core/async/h;Ljava/util/Map;Ljava/util/List;Lcom/google/android/youtube/core/async/ar;)V

    .line 80
    invoke-interface {v7, v8, v0}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/async/GDataRequestFactory;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aq;->c:Lcom/google/android/youtube/core/async/GDataRequestFactory;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/aq;)Lcom/google/android/youtube/core/utils/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aq;->d:Lcom/google/android/youtube/core/utils/a;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/google/android/youtube/core/async/h;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/aq;->a(Ljava/util/List;Lcom/google/android/youtube/core/async/h;)V

    return-void
.end method
