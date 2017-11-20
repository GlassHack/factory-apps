.class Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->addMenuItems(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$screenshotFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iput-object p2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->val$extras:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->val$screenshotFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v3, v3, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    iget-object v4, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->getContextualItems(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "contextualItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v3, v3, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .line 87
    invoke-static {v3}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$300(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getMainMenuItems()Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v4, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->val$screenshotFilePath:Ljava/lang/String;

    .line 90
    invoke-static {v3, v2, v1, v4}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->access$400(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 92
    move-object v0, v1

    .line 93
    .local v0, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v3, v3, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v3, v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$500(Lcom/google/glass/voice/service/menu/VoiceMenuService;Ljava/util/List;)V

    .line 96
    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$2;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v3, v3, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v3}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/voice/VoiceMenuDialog;->show()V

    .line 97
    return-void
.end method
