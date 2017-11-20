.class Lcom/google/glass/input/HeadScrollDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/input/PitchHelper$PitchListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/HeadScrollDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/HeadScrollDetector;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelativePitchChange(F)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v0}, Lcom/google/glass/input/HeadScrollDetector;->access$000(Lcom/google/glass/input/HeadScrollDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v0}, Lcom/google/glass/input/HeadScrollDetector;->access$100(Lcom/google/glass/input/HeadScrollDetector;)F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v1, v0}, Lcom/google/glass/input/HeadScrollDetector;->access$200(Lcom/google/glass/input/HeadScrollDetector;F)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    invoke-static {v0, p1}, Lcom/google/glass/input/HeadScrollDetector;->access$102(Lcom/google/glass/input/HeadScrollDetector;F)F

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/glass/input/HeadScrollDetector$1;->this$0:Lcom/google/glass/input/HeadScrollDetector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/input/HeadScrollDetector;->access$002(Lcom/google/glass/input/HeadScrollDetector;Z)Z

    goto :goto_0
.end method
