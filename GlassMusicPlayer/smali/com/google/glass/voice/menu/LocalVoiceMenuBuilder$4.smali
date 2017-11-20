.class Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

.field final synthetic val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

.field final synthetic val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;->this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    iput-object p2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;->val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    iput-object p3, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;->val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;->val$entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-interface {v0, v1}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;->onEntitySelected(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    .line 221
    return-void
.end method
