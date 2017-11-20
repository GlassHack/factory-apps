.class Lcom/google/glass/voice/VoiceMessageController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OmniInputListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMessageController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMessageController;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayingThumbnail(Lcom/google/glass/camera/Picture;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0, p1}, Lcom/google/glass/voice/VoiceMessageController;->access$202(Lcom/google/glass/voice/VoiceMessageController;Lcom/google/glass/camera/Picture;)Lcom/google/glass/camera/Picture;

    .line 159
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->access$300(Lcom/google/glass/voice/VoiceMessageController;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$id;->thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    invoke-virtual {p1}, Lcom/google/glass/camera/Picture;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    return-void
.end method

.method public shouldCaptureOmniInputPhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMessageController;->access$400(Lcom/google/glass/voice/VoiceMessageController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v2}, Lcom/google/glass/voice/VoiceMessageController;->access$300(Lcom/google/glass/voice/VoiceMessageController;)Landroid/view/ViewGroup;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$id;->mosaic_wrapper:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/voice/VoiceMessageController;->access$500(Lcom/google/glass/voice/VoiceMessageController;Landroid/view/View;)V

    .line 173
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMessageController$2;->this$0:Lcom/google/glass/voice/VoiceMessageController;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMessageController;->access$600(Lcom/google/glass/voice/VoiceMessageController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    const/4 v0, 0x1

    goto :goto_0
.end method
