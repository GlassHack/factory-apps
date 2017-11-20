.class Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$2;
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
    .line 116
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->onLookAtScreen()V

    .line 120
    return-void
.end method
