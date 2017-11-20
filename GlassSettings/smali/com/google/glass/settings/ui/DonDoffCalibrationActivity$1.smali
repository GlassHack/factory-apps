.class Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$1;
.super Ljava/lang/Object;
.source "DonDoffCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;
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
    .line 73
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$1;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$1;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    sget v1, Lcom/google/glass/settings/ui/R$string;->don_doff_calibration_failure:I

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->access$000(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;I)V

    .line 77
    return-void
.end method
