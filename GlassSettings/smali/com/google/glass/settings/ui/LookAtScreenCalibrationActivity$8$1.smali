.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;
.super Ljava/lang/Object;
.source "LookAtScreenCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;->onDone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;->this$1:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;

    iput-object p2, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;->this$1:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;

    iget-object v0, v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8$1;->val$utteranceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handleInstructionByName(Ljava/lang/String;)V

    .line 415
    return-void
.end method
