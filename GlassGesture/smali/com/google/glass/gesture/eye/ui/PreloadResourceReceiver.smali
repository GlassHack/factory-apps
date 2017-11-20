.class public final Lcom/google/glass/gesture/eye/ui/PreloadResourceReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "PreloadResourceReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/eye/ui/PreloadResourceReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 20
    const-string v0, "com.google.glass.gesture.action.PRELOAD_RESOURCES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/google/glass/gesture/eye/ui/PreloadResourceReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Preloading resources."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {p1}, Lcom/google/glass/gesture/eye/ui/AnimationCache;->getInstance(Landroid/content/Context;)Lcom/google/glass/gesture/eye/ui/AnimationCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/gesture/eye/ui/AnimationCache;->preload()V

    .line 23
    sget-object v0, Lcom/google/glass/gesture/eye/ui/PreloadResourceReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Preloading resources completed."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/google/glass/gesture/eye/ui/PreloadResourceReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown action received: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
