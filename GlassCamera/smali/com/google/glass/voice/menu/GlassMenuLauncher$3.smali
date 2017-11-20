.class Lcom/google/glass/voice/menu/GlassMenuLauncher$3;
.super Ljava/lang/Object;
.source "GlassMenuLauncher.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$menuIndex:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/app/GlassActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iput-object p2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput p4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$menuIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 345
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$100(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Z

    move-result v1

    .line 346
    .local v1, "isConnected":Z
    const/4 v0, 0x0

    .line 347
    .local v0, "fromVoice":Z
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 348
    invoke-virtual {v3, v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, "unsatisfiedRequirements":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/Requirement;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v3, v2, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$200(Lcom/google/glass/voice/menu/GlassMenuLauncher;Ljava/util/List;Landroid/view/MenuItem;)V

    .line 352
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$mainMenuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v4}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v3, v4, v5}, Lcom/google/glass/voice/menu/VoiceMenuItem;->triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    .line 353
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->this$0:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-static {v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "i"

    iget v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;->val$menuIndex:I

    .line 355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "m"

    aput-object v9, v7, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 353
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 356
    return v10
.end method
