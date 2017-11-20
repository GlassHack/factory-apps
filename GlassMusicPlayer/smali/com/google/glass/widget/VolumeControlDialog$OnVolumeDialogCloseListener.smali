.class Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/VolumeControlDialog;


# direct methods
.method private constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/widget/VolumeControlDialog;Lcom/google/glass/widget/VolumeControlDialog$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;-><init>(Lcom/google/glass/widget/VolumeControlDialog;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$600(Lcom/google/glass/widget/VolumeControlDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$500(Lcom/google/glass/widget/VolumeControlDialog;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$800(Lcom/google/glass/widget/VolumeControlDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/google/glass/widget/VolumeControlDialog$OnVolumeDialogCloseListener;->this$0:Lcom/google/glass/widget/VolumeControlDialog;

    invoke-static {v0}, Lcom/google/glass/widget/VolumeControlDialog;->access$800(Lcom/google/glass/widget/VolumeControlDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 294
    :cond_1
    return-void
.end method
