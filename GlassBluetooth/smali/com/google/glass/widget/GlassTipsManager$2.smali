.class Lcom/google/glass/widget/GlassTipsManager$2;
.super Ljava/lang/Object;
.source "GlassTipsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/GlassTipsManager;->checkCountThenShowTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManager;

.field final synthetic val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

.field final synthetic val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager$2;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    iput-object p2, p0, Lcom/google/glass/widget/GlassTipsManager$2;->val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iput-object p3, p0, Lcom/google/glass/widget/GlassTipsManager$2;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$2;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager$2;->val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager$2;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-static {v0, v1, v2}, Lcom/google/glass/widget/GlassTipsManager;->access$400(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 112
    return-void
.end method
