.class Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;


# direct methods
.method private constructor <init>(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V
    .locals 3

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.TIME_TICK"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;-><init>(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver$TickBroadcastReceiver;->this$0:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    invoke-static {v0}, Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;->access$100(Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 81
    return-void
.end method
