.class Lcom/google/glass/voice/VoiceMessageController$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;

.field final synthetic val$mosaicWrapper:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$10;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceMessageController$10;->val$mosaicWrapper:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellsLoaded(Z)V
    .locals 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$10;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$10;->val$mosaicWrapper:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceMessageController;->access$500(Lcom/google/glass/voice/VoiceMessageController;Landroid/view/View;)V

    .line 871
    return-void
.end method
