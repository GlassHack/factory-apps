.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$6;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "LookAtScreenCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showErrorMessageAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$6;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$6;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->finish()V

    .line 357
    return-void
.end method
