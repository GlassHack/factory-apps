.class Lcom/google/glass/voice/VoiceMenuDialog$9$1;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog$9;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/VoiceMenuDialog$9;

.field final synthetic val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog$9;Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/VoiceMenuDialog$9;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$1;->this$1:Lcom/google/glass/voice/VoiceMenuDialog$9;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$1;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$1;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$1;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$9$1;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 488
    :cond_0
    return-void
.end method
