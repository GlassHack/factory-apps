.class Lcom/google/glass/maps/service/MapRenderingService$RenderTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final creationTime:J

.field private final id:Ljava/lang/String;

.field private final messenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/google/glass/maps/service/MapRenderingService;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->messenger:Landroid/os/Messenger;

    .line 63
    iput-object p3, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->id:Ljava/lang/String;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->creationTime:J

    .line 65
    return-void
.end method

.method private isVectorGlobalStateInitialized()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Waiting for VGS initialization"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 146
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 147
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/VectorGlobalState;->e()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    .line 156
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->doInBackground([Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)[B
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v13, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->creationTime:J

    sub-long v2, v1, v3

    .line 71
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 72
    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Expected id %s but got %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "unexpected id"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v4, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->messenger:Landroid/os/Messenger;

    invoke-virtual {v4}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Skipping due to requester death: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$200(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "requester death"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Exception while rendering"

    new-array v4, v13, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v2}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    throw v1

    .line 85
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->isVectorGlobalStateInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 86
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Skipping because VectorGlobalState is not initialized"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "no VSG"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Executing request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$200(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v4, Lcom/google/glass/maps/service/BackgroundMapRenderer;

    iget-object v5, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-direct {v4, v5}, Lcom/google/glass/maps/service/BackgroundMapRenderer;-><init>(Landroid/content/Context;)V

    .line 101
    const/4 v5, 0x1

    new-array v5, v5, [J

    .line 102
    invoke-virtual {v4, v1, v5}, Lcom/google/glass/maps/service/BackgroundMapRenderer;->renderFrame(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;[J)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v1, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 106
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->creationTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v6, v2

    const/4 v4, 0x0

    aget-wide v8, v5, v4

    sub-long/2addr v6, v8

    .line 109
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v8, "Rendering finished: %sms queued, %sms fetch, %sms render"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 109
    invoke-interface {v4, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v4, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v4}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_REQUEST_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    const-string v9, "wt"

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ft"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget-wide v11, v5, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v10

    const/4 v5, 0x2

    const-string v10, "rt"

    aput-object v10, v3, v5

    const/4 v5, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    .line 112
    invoke-static {v9, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v4, v8, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    move-object v0, v1

    .line 114
    goto/16 :goto_0

    .line 116
    :cond_4
    invoke-static {}, Lcom/google/glass/maps/service/MapRenderingService;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Rendering failed: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    invoke-static {v1}, Lcom/google/glass/maps/service/MapRenderingService;->access$100(Lcom/google/glass/maps/service/MapRenderingService;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->MAP_RENDER_ERROR:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "no frame"

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->this$0:Lcom/google/glass/maps/service/MapRenderingService;

    iget-object v1, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->messenger:Landroid/os/Messenger;

    iget-object v2, p0, Lcom/google/glass/maps/service/MapRenderingService$RenderTask;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/google/glass/maps/service/MapRenderingService;->access$300(Lcom/google/glass/maps/service/MapRenderingService;Landroid/os/Messenger;Ljava/lang/String;[B)V

    .line 162
    return-void
.end method
