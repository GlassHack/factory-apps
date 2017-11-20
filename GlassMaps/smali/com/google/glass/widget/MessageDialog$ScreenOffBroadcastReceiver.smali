.class Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/MessageDialog;)V
    .locals 3

    .prologue
    .line 835
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/widget/MessageDialog;

    .line 836
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/MessageDialog;Lcom/google/glass/widget/MessageDialog$1;)V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;-><init>(Lcom/google/glass/widget/MessageDialog;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 853
    invoke-static {}, Lcom/google/glass/widget/MessageDialog;->access$2700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 841
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$ScreenOffBroadcastReceiver;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->onScreenOff()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 846
    invoke-static {}, Lcom/google/glass/widget/MessageDialog;->access$2600()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Error closing message dialog at screen-off."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
