.class Lcom/google/glass/voice/InputCorrectionControllerProvider$1;
.super Ljava/lang/Object;
.source "InputCorrectionControllerProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/InputCorrectionControllerProvider;->from(Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/content/Context;Z)Lcom/google/glass/voice/InputCorrectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/voice/InputCorrectionController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

.field final synthetic val$shouldEnableCorrections:Z


# direct methods
.method constructor <init>(Lcom/google/glass/voice/InputCorrectionControllerProvider;ZLcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/InputCorrectionControllerProvider;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    iput-boolean p2, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$shouldEnableCorrections:Z

    iput-object p3, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    iput-object p4, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/voice/InputCorrectionController;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/google/glass/voice/NoOpInputCorrectionController;

    invoke-direct {v0}, Lcom/google/glass/voice/NoOpInputCorrectionController;-><init>()V

    .line 33
    .local v0, "noOp":Lcom/google/glass/voice/NoOpInputCorrectionController;
    iget-boolean v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$shouldEnableCorrections:Z

    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->access$000(Lcom/google/glass/voice/InputCorrectionControllerProvider;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Corrections disabled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .end local v0    # "noOp":Lcom/google/glass/voice/NoOpInputCorrectionController;
    :goto_0
    return-object v0

    .line 37
    .restart local v0    # "noOp":Lcom/google/glass/voice/NoOpInputCorrectionController;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    if-nez v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->access$000(Lcom/google/glass/voice/InputCorrectionControllerProvider;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Null InputCorrectionController.InputCorrectionCallback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$context:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->access$000(Lcom/google/glass/voice/InputCorrectionControllerProvider;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Null GlassVoiceActivity."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->this$0:Lcom/google/glass/voice/InputCorrectionControllerProvider;

    invoke-static {v1}, Lcom/google/glass/voice/InputCorrectionControllerProvider;->access$000(Lcom/google/glass/voice/InputCorrectionControllerProvider;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Context is not an Activity."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_3
    new-instance v0, Lcom/google/glass/voice/DefaultInputCorrectionController;

    .end local v0    # "noOp":Lcom/google/glass/voice/NoOpInputCorrectionController;
    iget-object v2, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    iget-object v1, p0, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Lcom/google/glass/voice/DefaultInputCorrectionController;-><init>(Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/glass/voice/InputCorrectionControllerProvider$1;->get()Lcom/google/glass/voice/InputCorrectionController;

    move-result-object v0

    return-object v0
.end method
