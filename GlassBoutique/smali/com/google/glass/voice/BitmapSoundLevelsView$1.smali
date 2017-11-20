.class Lcom/google/glass/voice/BitmapSoundLevelsView$1;
.super Ljava/lang/Object;
.source "BitmapSoundLevelsView.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/BitmapSoundLevelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/BitmapSoundLevelsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/BitmapSoundLevelsView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/voice/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/voice/BitmapSoundLevelsView;->invalidate()V

    .line 74
    return-void
.end method
