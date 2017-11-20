.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->playAlphaAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    iput p2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/AnimationCache;->getInstance(Landroid/content/Context;)Lcom/google/glass/gesture/eye/ui/AnimationCache;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->val$resId:I

    invoke-virtual {v1, v2}, Lcom/google/glass/gesture/eye/ui/AnimationCache;->get(I)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2302(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 363
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    new-instance v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method
