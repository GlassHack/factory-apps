.class Lcom/google/glass/voice/service/menu/VoiceMenuService$5;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService;->asVoiceMenuItem(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

.field final synthetic val$remoteItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    iput-object p2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->val$remoteItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 4
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$000(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->val$remoteItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$000(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;->val$remoteItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-interface {v1, v2}, Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Callback failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
