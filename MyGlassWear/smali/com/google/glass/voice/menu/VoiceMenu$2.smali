.class Lcom/google/glass/voice/menu/VoiceMenu$2;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$postAnimationRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$100(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->access$000(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 293
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getAnimationDelayMillis()J

    move-result-wide v2

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$200(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/OverscrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->scrollToItem(F)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v2}, Lcom/google/glass/voice/menu/VoiceMenu;->access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v3}, Lcom/google/glass/voice/menu/VoiceMenu;->access$200(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->access$600(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$700(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getEmptySubmenuMessage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$800(Lcom/google/glass/voice/menu/VoiceMenu;I)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$902(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z

    .line 306
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 309
    :cond_2
    return-void
.end method
