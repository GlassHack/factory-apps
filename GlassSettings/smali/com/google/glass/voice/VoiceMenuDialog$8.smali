.class Lcom/google/glass/voice/VoiceMenuDialog$8;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$500(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/ActionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$500(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/ActionController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1200(Lcom/google/glass/voice/VoiceMenuDialog;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController;->dismiss(Z)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1100(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "u"

    iget-object v3, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    .line 412
    invoke-static {v3}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1200(Lcom/google/glass/voice/VoiceMenuDialog;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "b"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/voice/VoiceMenuDialog$8;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    .line 413
    invoke-static {v6}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1300(Lcom/google/glass/voice/VoiceMenuDialog;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 411
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 414
    return-void
.end method
