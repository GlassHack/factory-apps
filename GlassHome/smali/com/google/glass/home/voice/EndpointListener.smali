.class public Lcom/google/glass/home/voice/EndpointListener;
.super Lcom/google/glass/home/voice/RecognitionAdapter;
.source "EndpointListener.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private notification:Lcom/google/glass/home/timeline/TimelineItemNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/EndpointListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/home/voice/RecognitionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/home/voice/EndpointListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Speech detected, delaying notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/home/voice/EndpointListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Speech finished, displaying notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/google/glass/home/voice/EndpointListener;->notification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContent()V

    .line 31
    return-void
.end method

.method public onError(I)V
    .locals 5
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 36
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 39
    sget-object v0, Lcom/google/glass/home/voice/EndpointListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No speech detected, displaying notification"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/google/glass/home/voice/EndpointListener;->notification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineItemNotification;->loadContent()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/google/glass/home/voice/EndpointListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error %d in speech recognition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNotification(Lcom/google/glass/home/timeline/TimelineItemNotification;)V
    .locals 0
    .param p1, "notification"    # Lcom/google/glass/home/timeline/TimelineItemNotification;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/glass/home/voice/EndpointListener;->notification:Lcom/google/glass/home/timeline/TimelineItemNotification;

    .line 25
    return-void
.end method
