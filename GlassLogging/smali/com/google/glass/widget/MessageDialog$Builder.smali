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
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$Builder;->context:Landroid/content/Context;

    .line 588
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 589
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1502(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/sound/SoundManager;

    .line 590
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 593
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;-><init>(Lcom/google/glass/widget/MessageDialog$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 594
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2002(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 595
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2102(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 596
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$502(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 597
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, v2}, Lcom/google/glass/widget/MessageDialog$Params;->access$702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 598
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/widget/MessageDialog;
    .locals 4

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    .line 826
    .local v0, "finalParams":Lcom/google/glass/widget/MessageDialog$Params;
    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$Builder;->reset()V

    .line 827
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
    .line 789
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$502(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 790
    return-object p0
.end method

.method public setAutoHide(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "autoHide"    # Z

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2002(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 760
    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$802(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 750
    return-object p0
.end method

.method public setDismissable(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "dismissable"    # Z

    .prologue
    .line 808
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$702(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 809
    return-object p0
.end method

.method public setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$902(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 800
    return-object p0
.end method

.method public setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "handleConfirm"    # Z

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2102(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 770
    return-object p0
.end method

.method public setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 662
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
    .line 670
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1802(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 671
    return-object p0
.end method

.method public setKeepScreenOn(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "keepScreenOn"    # Z

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$602(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 654
    return-object p0
.end method

.method public setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/google/glass/widget/MessageDialog$Listener;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$202(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Listener;

    .line 818
    return-object p0
.end method

.method public setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 605
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
    .line 613
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1602(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 614
    return-object p0
.end method

.method public setMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$2302(Lcom/google/glass/widget/MessageDialog$Params;J)J

    .line 645
    return-object p0
.end method

.method public setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 624
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
    .line 634
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1702(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 635
    return-object p0
.end method

.method public setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "showProgress"    # Z

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1902(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 780
    return-object p0
.end method

.method public setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "soundId"    # Lcom/google/glass/sound/SoundManager$SoundId;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1402(Lcom/google/glass/widget/MessageDialog$Params;Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/sound/SoundManager$SoundId;

    .line 680
    return-object p0
.end method

.method public setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 732
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
    .line 740
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1202(Lcom/google/glass/widget/MessageDialog$Params;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 741
    return-object p0
.end method

.method public setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 698
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
    .line 706
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1002(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 707
    return-object p0
.end method

.method public setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 2
    .param p1, "durationMillis"    # J

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1, p2}, Lcom/google/glass/widget/MessageDialog$Params;->access$1302(Lcom/google/glass/widget/MessageDialog$Params;J)J

    .line 689
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/glass/widget/MessageDialog$Params;->access$2402(Lcom/google/glass/widget/MessageDialog$Params;Z)Z

    .line 690
    return-object p0
.end method

.method public setTemporarySecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 715
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
    .line 723
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$Builder;->params:Lcom/google/glass/widget/MessageDialog$Params;

    invoke-static {v0, p1}, Lcom/google/glass/widget/MessageDialog$Params;->access$1102(Lcom/google/glass/widget/MessageDialog$Params;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 724
    return-object p0
.end method
