.class public final Lcom/google/glass/widget/MessageDialog$Builder;
.super Ljava/lang/Object;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private params:Lcom/google/glass/widget/MessageDialog$Params;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "soundManager"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    .line 609
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 610
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1502(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/sound/SoundManager;

    .line 611
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 614
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;-><init>(Lcom/google/glass/widget/MessageDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 615
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2002(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 616
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2102(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 617
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 618
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 619
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/widget/MessageDialog;
    .locals 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 847
    .local v0, "finalParams":Lcom/google/glass/widget/MessageDialog$Params;
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 848
    new-instance v1, Lcom/google/glass/widget/MessageDialog;

    iget-object v2, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/glass/widget/MessageDialog;-><init>(Landroid/content/Context;Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$1;)V

    return-object v1
.end method

.method public setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 811
    return-object p0
.end method

.method public setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "autoHide"    # Z

    .prologue
    .line 780
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2002(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 781
    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$702(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 771
    return-object p0
.end method

.method public setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "dismissable"    # Z

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 830
    return-object p0
.end method

.method public setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$802(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 821
    return-object p0
.end method

.method public setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "handleConfirm"    # Z

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2102(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 791
    return-object p0
.end method

.method public setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1802(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 692
    return-object p0
.end method

.method public setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$502(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 675
    return-object p0
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/widget/MessageDialog$Listener;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$102(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 839
    return-object p0
.end method

.method public setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1602(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 635
    return-object p0
.end method

.method public setMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2302(Lcom/google/glass/widget/MessageDialog$Params;J)J

    .line 666
    return-object p0
.end method

.method public setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1702(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 656
    return-object p0
.end method

.method public setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "showProgress"    # Z

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1902(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 801
    return-object p0
.end method

.method public setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1402(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/sound/SoundManager$SoundId;

    .line 701
    return-object p0
.end method

.method public setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1102(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 762
    return-object p0
.end method

.method public setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$902(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 728
    return-object p0
.end method

.method public setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1202(Lcom/google/glass/widget/MessageDialog$Params;J)J

    .line 710
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 711
    return-object p0
.end method

.method public setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporarySecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setTemporarySecondaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1002(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 745
    return-object p0
.end method
