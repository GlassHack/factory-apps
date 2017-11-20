.class public abstract Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final EYE_GESTURE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.glass.action.EYE_GESTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->EYE_GESTURE_FILTER:Landroid/content/IntentFilter;

    .line 21
    sget-object v0, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->EYE_GESTURE_FILTER:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    sget-object v1, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->EYE_GESTURE_FILTER:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 28
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method
