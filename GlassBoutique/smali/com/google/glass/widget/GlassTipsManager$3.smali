.class Lcom/google/glass/widget/GlassTipsManager$3;
.super Ljava/lang/Object;
.source "GlassTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTipsManager;->checkCountThenRotateTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManager;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTipsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager$3;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$3;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$300(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Rotate tips"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$3;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$500(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$3;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$500(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips;->rotate()V

    .line 126
    :cond_0
    return-void
.end method
