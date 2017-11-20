.class Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "TutorialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaledChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialService;


# direct methods
.method private constructor <init>(Lcom/google/glass/tutorial/TutorialService;)V
    .locals 3

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;->this$0:Lcom/google/glass/tutorial/TutorialService;

    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/tutorial/TutorialService;Lcom/google/glass/tutorial/TutorialService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/tutorial/TutorialService;
    .param p2, "x1"    # Lcom/google/glass/tutorial/TutorialService$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;-><init>(Lcom/google/glass/tutorial/TutorialService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/google/glass/tutorial/TutorialService;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;->this$0:Lcom/google/glass/tutorial/TutorialService;

    invoke-static {v0}, Lcom/google/glass/tutorial/TutorialService;->access$100(Lcom/google/glass/tutorial/TutorialService;)Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->updateTextViewsText()V

    .line 186
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialService$LocaledChangedBroadcastReceiver;->this$0:Lcom/google/glass/tutorial/TutorialService;

    invoke-static {v0}, Lcom/google/glass/tutorial/TutorialService;->access$100(Lcom/google/glass/tutorial/TutorialService;)Lcom/google/glass/tutorial/remote/TutorialLiveCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/tutorial/remote/TutorialLiveCardView;->requestLayout()V

    .line 188
    :cond_0
    return-void
.end method
