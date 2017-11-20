.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$5;
.super Ljava/lang/Object;
.source "LookAtScreenCalibrationActivity.java"

# interfaces
.implements Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->onCreateInternal(Landroid/os/Bundle;)V
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
    .line 153
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$5;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->access$000(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    .line 157
    return-void
.end method
