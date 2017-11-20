.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;
.super Ljava/lang/Object;
.source "LookAtScreenCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;
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
    .line 106
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isCalibrationEnding:Z

    .line 110
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    iget-object v0, v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endCalibrationListener:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;

    invoke-interface {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;->onDone()V

    .line 111
    return-void
.end method
