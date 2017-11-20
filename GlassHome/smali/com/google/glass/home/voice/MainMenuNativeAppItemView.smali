.class public Lcom/google/glass/home/voice/MainMenuNativeAppItemView;
.super Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;
.source "MainMenuNativeAppItemView.java"


# instance fields
.field private activity:Lcom/google/glass/app/GlassActivity;

.field private trigger:Lcom/google/android/glass/app/VoiceTrigger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/glass/app/VoiceTrigger;)V
    .locals 4
    .param p1, "voiceTrigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 42
    sget v2, Lcom/google/glass/home/R$id;->icon:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    .local v0, "image":Landroid/widget/ImageView;
    sget v2, Lcom/google/glass/home/R$id;->label:I

    invoke-virtual {p0, v2}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "label":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/glass/app/VoiceTrigger;->loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/glass/app/VoiceTrigger;->loadLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/glass/widget/horizontalscroll/FrameLayoutCard;->onConfirm()Z

    .line 34
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newDisambiguationItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v2}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public setGlassActivity(Lcom/google/glass/app/GlassActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->activity:Lcom/google/glass/app/GlassActivity;

    .line 29
    return-void
.end method
