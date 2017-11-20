.class Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;
.super Ljava/lang/Object;
.source "LookAtScreenPlaypenActivity.java"

# interfaces
.implements Lcom/google/android/glass/eye/EyeGestureManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Lcom/google/android/glass/eye/EyeGesture;)V
    .locals 4
    .param p1, "gesture"    # Lcom/google/android/glass/eye/EyeGesture;

    .prologue
    .line 122
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 123
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->access$000(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->pulse()V

    .line 124
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->access$104(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)I

    .line 125
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 126
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    sget v2, Lcom/google/glass/settings/ui/R$id;->look_at_screen_playpen_message:I

    invoke-virtual {v1, v2}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "textView":Landroid/widget/TextView;
    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_playpen_second_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 133
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;

    sget v2, Lcom/google/glass/settings/ui/R$id;->look_at_screen_playpen_message:I

    invoke-virtual {v1, v2}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .restart local v0    # "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
