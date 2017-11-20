.class Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "GlassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/app/GlassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field private final screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 3

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/app/GlassActivity;

    .line 622
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/app/GlassActivity;

    .line 619
    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->access$200(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "screenOffReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;->screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 623
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/app/GlassActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "x1"    # Lcom/google/glass/app/GlassActivity$1;

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/app/GlassActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;->screenOffBroadcastLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 629
    return-void
.end method
