.class Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$4;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "DonDoffCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showConfirmationMessageThenFinish()V
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
    .line 291
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$4;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$4;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->finish()V

    .line 296
    return-void
.end method
