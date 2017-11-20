.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "WinkCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showErrorDialogAndFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2502(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Z)Z

    .line 572
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->finish()V

    .line 573
    return-void
.end method
