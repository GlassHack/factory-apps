.class Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

.field final synthetic val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

.field final synthetic val$menuItemAction:I


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    iput p2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->val$menuItemAction:I

    iput-object p3, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->this$0:Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    iget v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->val$menuItemAction:I

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->val$entityCallback:Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;

    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->access$000(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;->apply(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method
