.class Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

.field final synthetic val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;->this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    iput-object p2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntitySelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v1, "entity"

    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 168
    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setResults(Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;->val$item:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 170
    return-void
.end method
