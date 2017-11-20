.class Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$4;
.super Ljava/lang/Object;
.source "WinkCalibrationActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 273
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$4;->this$0:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 277
    return-void
.end method
