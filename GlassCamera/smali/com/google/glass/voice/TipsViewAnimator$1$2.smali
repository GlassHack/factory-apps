.class Lcom/google/glass/voice/TipsViewAnimator$1$2;
.super Ljava/lang/Object;
.source "TipsViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/TipsViewAnimator$1;->saveTipsViewCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/TipsViewAnimator$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TipsViewAnimator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/TipsViewAnimator$1;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator$1$2;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$1$2;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v0, v0, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v0}, Lcom/google/glass/voice/TipsViewAnimator;->access$700(Lcom/google/glass/voice/TipsViewAnimator;)Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/TipsViewAnimator$1$2;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v1, v1, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v1}, Lcom/google/glass/voice/TipsViewAnimator;->access$100(Lcom/google/glass/voice/TipsViewAnimator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/TipsViewAnimator$1$2;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v2, v2, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-static {v2}, Lcom/google/glass/voice/TipsViewAnimator;->access$600(Lcom/google/glass/voice/TipsViewAnimator;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/TipsViewAnimator$1$2;->this$1:Lcom/google/glass/voice/TipsViewAnimator$1;

    iget-object v3, v3, Lcom/google/glass/voice/TipsViewAnimator$1;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    .line 81
    invoke-static {v3}, Lcom/google/glass/voice/TipsViewAnimator;->access$300(Lcom/google/glass/voice/TipsViewAnimator;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/SettingsContract;->updateOrInsert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    return-void
.end method
