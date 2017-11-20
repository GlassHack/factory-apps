.class Lcom/google/glass/setup/SetupFlowController$5;
.super Ljava/lang/Object;
.source "SetupFlowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/setup/SetupFlowController;


# direct methods
.method constructor <init>(Lcom/google/glass/setup/SetupFlowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/setup/SetupFlowController;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/glass/setup/SetupFlowController$5;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 550
    invoke-static {}, Lcom/google/glass/setup/SetupFlowController;->access$300()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "selected locale:%s, default locale:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/setup/SetupFlowController$5;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-static {v4}, Lcom/google/glass/setup/SetupFlowController;->access$200(Lcom/google/glass/setup/SetupFlowController;)Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$5;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-static {v0}, Lcom/google/glass/setup/SetupFlowController;->access$200(Lcom/google/glass/setup/SetupFlowController;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$5;->this$0:Lcom/google/glass/setup/SetupFlowController;

    invoke-static {v0}, Lcom/google/glass/setup/SetupFlowController;->access$200(Lcom/google/glass/setup/SetupFlowController;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/glass/hidden/HiddenActivityManagerNative;->setLocale(Ljava/util/Locale;)Z

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/glass/setup/SetupFlowController$5;->this$0:Lcom/google/glass/setup/SetupFlowController;

    sget-object v1, Lcom/google/glass/setup/SetupFlowController$State;->SWIPE_FORWARD:Lcom/google/glass/setup/SetupFlowController$State;

    sget-object v2, Lcom/google/glass/setup/SetupFlowController$Transition;->CLEAR_AND_PUSH:Lcom/google/glass/setup/SetupFlowController$Transition;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/setup/SetupFlowController;->switchToState(Lcom/google/glass/setup/SetupFlowController$State;Lcom/google/glass/setup/SetupFlowController$Transition;)Z

    goto :goto_0
.end method
