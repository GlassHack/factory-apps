.class Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/shared/logger/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureLoggingCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mEndEvent:I

.field private final mErrorCode:I

.field private final mErrorEvent:I

.field private final mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;


# direct methods
.method constructor <init>(IIIILcom/google/android/shared/logger/LatencyLoggingData;)V
    .locals 1
    .param p1, "startEvent"    # I
    .param p2, "endEvent"    # I
    .param p3, "errorEvent"    # I
    .param p4, "errorCode"    # I
    .param p5, "data"    # Lcom/google/android/shared/logger/LatencyLoggingData;

    .prologue
    .line 111
    .local p0, "this":Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;, "Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mEndEvent:I

    .line 113
    iput p3, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mErrorEvent:I

    .line 114
    iput p4, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mErrorCode:I

    .line 115
    iput-object p5, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;

    .line 116
    iget-object v0, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;

    invoke-static {p1, v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;, "Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback<TT;>;"
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const-string v0, "EventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Future for event cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mEndEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    iget v0, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mEndEvent:I

    iget-object v1, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;

    invoke-static {v0, v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 135
    return-void

    .line 131
    :cond_1
    iget v0, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mErrorEvent:I

    iget-object v1, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;

    iget v2, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mErrorCode:I

    invoke-virtual {v1, v2}, Lcom/google/android/shared/logger/LatencyLoggingData;->withErrorCode(I)Lcom/google/android/shared/logger/LatencyLoggingData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;, "Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mEndEvent:I

    iget-object v1, p0, Lcom/google/android/shared/logger/EventLogger$FutureLoggingCallback;->mLogData:Lcom/google/android/shared/logger/LatencyLoggingData;

    invoke-static {v0, v1}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 122
    return-void
.end method
