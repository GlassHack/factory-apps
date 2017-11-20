.class Lcom/google/glass/input/HeadScrollDetector$1;
.super Ljava/lang/Object;
.source "HeadScrollDetector.java"

# interfaces
.implements Lcom/google/glass/input/PitchHelper$PitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/HeadScrollDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScrollDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScrollDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/input/HeadScrollDetector;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelativePitchChange(F)V
    .locals 3
    .param p1, "pitch"    # F

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v1}, Lcom/google/glass/input/HeadScrollDetector;->access$000(Lcom/google/glass/input/HeadScrollDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v1}, Lcom/google/glass/input/HeadScrollDetector;->access$100(Lcom/google/glass/input/HeadScrollDetector;)F

    move-result v1

    sub-float v1, p1, v1

    const/high16 v2, 0x42200000    # 40.0f

    mul-float v0, v1, v2

    .line 63
    .local v0, "deltaPixels":F
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v1, v0}, Lcom/google/glass/input/HeadScrollDetector;->access$200(Lcom/google/glass/input/HeadScrollDetector;F)V

    .line 67
    .end local v0    # "deltaPixels":F
    :goto_0
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v1, p1}, Lcom/google/glass/input/HeadScrollDetector;->access$102(Lcom/google/glass/input/HeadScrollDetector;F)F

    .line 68
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/glass/input/HeadScrollDetector;->access$002(Lcom/google/glass/input/HeadScrollDetector;Z)Z

    goto :goto_0
.end method
