.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->onCreateInternal(Landroid/os/Bundle;)V
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
    .line 280
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    sget v2, Lcom/google/glass/gesture/R$raw;->wink_background_animation:I

    invoke-static {v1, v2}, Lcom/google/glass/util/IconProvider;->buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-static {v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->access$2200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 286
    return-void
.end method
