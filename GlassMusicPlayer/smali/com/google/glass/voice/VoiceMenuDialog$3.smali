.class Lcom/google/glass/voice/VoiceMenuDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollView$TransformListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(F)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$600(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/widget/FastScrollOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->onScaleChanged(F)V

    .line 254
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$600(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/widget/FastScrollOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->onScrollPositionChanged(F)V

    .line 249
    return-void
.end method
