.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 366
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    iget-object v0, v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    iget-object v1, v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6$1;->this$1:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    iget-object v0, v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 368
    return-void
.end method
