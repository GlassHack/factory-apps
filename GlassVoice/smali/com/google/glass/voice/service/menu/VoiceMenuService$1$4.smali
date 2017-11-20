.class Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->closeVoiceMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v0, v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v0, v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->dismiss()V

    .line 151
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$4;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    iget-object v0, v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$602(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog;

    .line 153
    :cond_0
    return-void
.end method
