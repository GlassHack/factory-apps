.class Lcom/google/glass/voice/BitmapSoundLevelsView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->invalidate()V

    .line 74
    return-void
.end method
