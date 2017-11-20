.class Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z

    .line 274
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->finish()V

    .line 275
    return-void
.end method
