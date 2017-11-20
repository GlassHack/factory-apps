.class Lcom/google/glass/share/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareActivity;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 3
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/google/glass/share/ShareActivity$2;->this$0:Lcom/google/glass/share/ShareActivity;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getResults()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "annotation_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/share/ShareActivity;->access$000(Lcom/google/glass/share/ShareActivity;Ljava/lang/String;)V

    .line 390
    :cond_0
    return-void
.end method
