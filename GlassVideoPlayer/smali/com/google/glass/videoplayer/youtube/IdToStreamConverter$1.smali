.class Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/h;


# instance fields
.field final synthetic this$0:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

.field final synthetic val$t:J

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;Ljava/lang/String;JLcom/google/glass/videoplayer/VideoPlayer;Lcom/google/glass/videoplayer/widget/PlayerView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->this$0:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

    iput-object p2, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$t:J

    iput-object p5, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    iput-object p6, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    iput-object p7, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 153
    invoke-static {}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "requestVideo onError %s in time %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoId:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x1

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$t:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 153
    invoke-interface {v0, p2, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    sget v1, Lcom/google/glass/videoplayer/R$string;->generic_error:I

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessage(I)V

    .line 156
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->this$0:Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;

    invoke-static {v0}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->access$100(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->PLAY_VIDEO_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "d"

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$t:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 156
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 159
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 103
    invoke-static {}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Got response for video %s in time %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoId:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$t:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    .line 103
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->REQUESTING_ID:Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->isState(Lcom/google/glass/videoplayer/util/State;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$videoPlayer:Lcom/google/glass/videoplayer/VideoPlayer;

    sget-object v1, Lcom/google/glass/videoplayer/util/State;->LOADING:Lcom/google/glass/videoplayer/util/State;

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/VideoPlayer;->setState(Lcom/google/glass/videoplayer/util/State;)Lcom/google/glass/videoplayer/util/State;

    .line 110
    const/4 v1, 0x0

    .line 111
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->mqThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v0, p2, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    .line 114
    invoke-static {}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Stream %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-static {v0}, Lcom/google/glass/videoplayer/util/Utils;->isValidStream(Lcom/google/android/youtube/core/model/Stream;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    if-nez v1, :cond_3

    :cond_2
    :goto_2
    move-object v1, v0

    .line 125
    goto :goto_1

    .line 122
    :cond_3
    iget-object v4, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v4

    iget-object v5, v1, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/model/Stream$Quality;->ordinal()I

    move-result v5

    if-gt v4, v5, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 126
    :cond_4
    invoke-static {}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "Showing stream %s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    if-eqz v1, :cond_6

    .line 128
    iget-object v0, v1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1$1;-><init>(Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 142
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 144
    :cond_5
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->val$playerView:Lcom/google/glass/videoplayer/widget/PlayerView;

    sget v1, Lcom/google/glass/videoplayer/R$string;->video_not_allowed:I

    invoke-virtual {v0, v1}, Lcom/google/glass/videoplayer/widget/PlayerView;->showErrorMessage(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/videoplayer/youtube/IdToStreamConverter$1;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method
