.class public Lcom/google/glass/widget/ClockView;
.super Landroid/widget/TextView;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    sget-object v0, Lcom/google/glass/widget/ClockView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "timeReceiver"

    .line 24
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;-><init>(Lcom/google/glass/widget/ClockView;Lcom/google/glass/widget/ClockView$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    .line 34
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/ClockView;->setGravity(I)V

    .line 35
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/ClockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/ClockView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/widget/ClockView;->timeReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private updateTime()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, "currentTime":J
    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v4, v4}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "formattedTime":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/glass/widget/ClockView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method


# virtual methods
.method public onLoad()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 40
    invoke-direct {p0}, Lcom/google/glass/widget/ClockView;->updateTime()V

    .line 41
    return-void
.end method

.method public onUnload()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/widget/ClockView;->timeReceiver:Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ClockView$TimeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 45
    return-void
.end method
