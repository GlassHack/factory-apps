.class public Lcom/google/android/wearable/app/GlassStreamListener;
.super Ljava/lang/Object;
.source "GlassStreamListener.java"

# interfaces
.implements Lcom/google/android/clockwork/stream/StreamListener;


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "glass_wear"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/wearable/app/GlassStreamListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public onStreamChange(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/wearable/app/GlassStreamListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onStreamChange [event=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method
