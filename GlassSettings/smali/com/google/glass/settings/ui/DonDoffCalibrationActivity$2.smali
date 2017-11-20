.class Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$2;
.super Ljava/lang/Object;
.source "DonDoffCalibrationActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->onCreateInternal(Landroid/os/Bundle;)V
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
    .line 89
    iput-object p1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$2;->this$0:Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 93
    return-void
.end method
