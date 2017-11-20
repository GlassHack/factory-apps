.class Lcom/google/glass/voice/VoiceMenuDialog$3;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Lcom/google/android/glass/widget/CardScrollView$TransformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;->initializeFastScrollOverlay()V
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
    .line 245
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleChanged(F)V
    .locals 1
    .param p1, "scale"    # F

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
    .param p1, "scrollPosition"    # F

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$600(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/widget/FastScrollOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->onScrollPositionChanged(F)V

    .line 249
    return-void
.end method
