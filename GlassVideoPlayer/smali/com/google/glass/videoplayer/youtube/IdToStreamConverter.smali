.class public Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field gdataClient:Lcom/google/android/youtube/core/client/g;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 62
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 63
    const-string v0, "youtube"

    invoke-virtual {p1, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 64
    new-instance v1, Lcom/google/android/youtube/core/utils/SafeSearch;

    invoke-direct {v1, p1, v8}, Lcom/google/android/youtube/core/utils/SafeSearch;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 65
    new-instance v0, Lcom/google/android/youtube/core/client/g;

    new-instance v4, Lcom/google/android/youtube/core/utils/l;

    invoke-direct {v4}, Lcom/google/android/youtube/core/utils/l;-><init>()V

    .line 69
    invoke-static {}, Lcom/google/android/youtube/core/converter/l;->a()Lcom/google/android/youtube/core/converter/l;

    move-result-object v5

    new-instance v6, Lcom/google/android/youtube/core/async/GDataRequestFactory;

    const/16 v7, 0xa

    const-string v9, "GB"

    invoke-direct {v6, v7, v1, v9}, Lcom/google/android/youtube/core/async/GDataRequestFactory;-><init>(ILcom/google/android/youtube/core/utils/SafeSearch;Ljava/lang/String;)V

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/client/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/a;Lcom/google/android/youtube/core/converter/l;Lcom/google/android/youtube/core/async/GDataRequestFactory;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->gdataClient:Lcom/google/android/youtube/core/client/g;

    .line 71
    new-instance v4, Lcom/google/android/youtube/core/utils/m;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/youtube/core/utils/m;-><init>(Landroid/content/ContentResolver;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "%x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 78
    :cond_0
    new-instance v1, Lcom/google/android/youtube/core/client/f;

    sget-object v5, Lcom/google/glass/videoplayer/youtube/K;->DK:[B

    sget-object v6, Lcom/google/glass/videoplayer/youtube/K;->DS:[B

    invoke-direct/range {v1 .. v7}, Lcom/google/android/youtube/core/client/f;-><init>(Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/m;[B[BLjava/lang/String;)V

    .line 86
    new-instance v0, Lcom/google/android/youtube/core/async/m;

    invoke-direct {v0, v1, v8}, Lcom/google/android/youtube/core/async/m;-><init>(Lcom/google/android/youtube/core/client/t;Landroid/content/SharedPreferences;)V

    .line 88
    new-instance v1, Lcom/google/android/youtube/core/async/l;

    .line 89
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/async/l;-><init>(Landroid/accounts/AccountManager;)V

    .line 90
    iget-object v2, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->gdataClient:Lcom/google/android/youtube/core/client/g;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/youtube/core/client/g;->a(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/GDataRequest$Version;)V

    .line 91
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 92
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method


# virtual methods
.method public requestVideo(Ljava/lang/String;Lcom/google/glass/videoplayer/VideoPlayer;Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/app/Activity;)V
    .locals 9

    .prologue
    .line 96
    sget-object v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requesting video %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 98
    sget-object v0, Lcom/google/glass/videoplayer/util/State;->REQUESTING_ID:Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {p2, v0}, Lcom/google/glass/videoplayer/VideoPlayer;->setState(Lcom/google/glass/videoplayer/util/State;)Lcom/google/glass/videoplayer/util/State;

    .line 99
    iget-object v8, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->gdataClient:Lcom/google/android/youtube/core/client/g;

    new-instance v0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;-><init>(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;Ljava/lang/String;JLcom/google/glass/videoplayer/VideoPlayer;Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/app/Activity;)V

    .line 100
    invoke-static {p4, v0}, Lcom/google/android/youtube/core/async/b;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/h;)Lcom/google/android/youtube/core/async/b;

    move-result-object v0

    .line 99
    invoke-virtual {v8, p1, v0}, Lcom/google/android/youtube/core/client/g;->a(Ljava/lang/String;Lcom/google/android/youtube/core/async/h;)V

    .line 161
    return-void
.end method
