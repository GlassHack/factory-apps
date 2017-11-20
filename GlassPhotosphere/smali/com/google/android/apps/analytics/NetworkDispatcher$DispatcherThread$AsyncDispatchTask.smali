.class Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDispatchTask"
.end annotation


# instance fields
.field private final hits:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/analytics/Hit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;[Lcom/google/android/apps/analytics/Hit;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private dispatchSomePendingHits(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "dispatching hits in dry run mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    new-array v1, v2, [Lcom/google/android/apps/analytics/Hit;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/Hit;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1000(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)I

    move-result v3

    if-ge v1, v3, :cond_a

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/google/android/apps/analytics/Hit;->hitString:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/analytics/Utils;->addQueueTimeParameter(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x3f

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2

    const-string v3, ""

    move-object v4, v5

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x7f4

    if-ge v6, v7, :cond_5

    new-instance v4, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v6, "GET"

    invoke-direct {v4, v6, v5}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v5, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v5}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$700(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/analytics/NetworkDispatcher;->access$200(Lcom/google/android/apps/analytics/NetworkDispatcher;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v6}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$700(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/analytics/NetworkDispatcher;->access$200(Lcom/google/android/apps/analytics/NetworkDispatcher;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    const/16 v7, 0x50

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v6}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$700(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/analytics/NetworkDispatcher;->access$200(Lcom/google/android/apps/analytics/NetworkDispatcher;)Lorg/apache/http/HttpHost;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v6, "Host"

    invoke-interface {v4, v6, v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "User-Agent"

    iget-object v6, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v6}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1100(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    array-length v8, v7

    move v5, v2

    :goto_3
    if-ge v5, v8, :cond_6

    aget-object v9, v7, v5

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v4, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_1

    :cond_3
    const-string v3, ""

    goto :goto_4

    :cond_4
    const-string v4, ""

    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_1

    :cond_5
    new-instance v5, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v6, "POST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/p"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v6, "text/plain"

    invoke-interface {v5, v4, v6}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v4, v5

    goto/16 :goto_2

    :cond_6
    invoke-interface {v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "GoogleAnalyticsTracker"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x2000

    if-le v3, v5, :cond_8

    const-string v3, "GoogleAnalyticsTracker"

    const-string v4, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1200(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->requestSent()V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1200(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->requestSent()V

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$800(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/PipelinedRequester;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/apps/analytics/PipelinedRequester;->addRequest(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_5

    :cond_a
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$800(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/PipelinedRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PipelinedRequester;->sendRequests()V

    :cond_b
    return-void
.end method


# virtual methods
.method public removeNextHit()Lcom/google/android/apps/analytics/Hit;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/Hit;

    return-object v0
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0, p0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$402(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->hits:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$500(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)I

    move-result v3

    const/16 v4, 0x1f4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$500(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)I

    move-result v3

    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_2

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$600(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-long v0, v0

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$600(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)J

    move-result-wide v3

    const-wide/16 v5, 0x100

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const-wide/16 v4, 0x2

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$630(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;J)J

    :cond_1
    :goto_1
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$700(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher;->isDryRun()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->dispatchSomePendingHits(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const-wide/16 v4, 0x2

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$602(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Couldn\'t sleep."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$800(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/PipelinedRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PipelinedRequester;->finishedCurrentRequests()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$900(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/analytics/Dispatcher$Callbacks;->dispatchFinished()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$402(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    return-void

    :catch_1
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with socket or streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with http streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
