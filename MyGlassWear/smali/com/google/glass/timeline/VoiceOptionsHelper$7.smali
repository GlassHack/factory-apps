.class Lcom/google/glass/timeline/VoiceOptionsHelper$7;
.super Ljava/lang/Object;
.source "VoiceOptionsHelper.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/VoiceOptionsHelper;->addVoiceMessageItem(Lcom/google/glass/voice/menu/VoiceMenuBuilder;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/android/glass/app/ContextualMenus$Command;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/VoiceOptionsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/VoiceOptionsHelper;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$7;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/glass/timeline/VoiceOptionsHelper$7;->this$0:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->access$100(Lcom/google/glass/timeline/VoiceOptionsHelper;)Lcom/google/glass/util/TtsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 430
    return-void
.end method
