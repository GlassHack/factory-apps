.class public final Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;
.super Lcom/google/glass/home/voice/MainMenuCommandReceiver;
.source "MainMenuCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/voice/MainMenuCommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeCommandReceiver"
.end annotation


# instance fields
.field private final voiceTrigger:Lcom/google/android/glass/app/VoiceTrigger;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/app/VoiceTrigger;)V
    .locals 1
    .param p1, "voiceTrigger"    # Lcom/google/android/glass/app/VoiceTrigger;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/MainMenuCommandReceiver;-><init>(Z)V

    .line 81
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;->voiceTrigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 82
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 86
    move-object v0, p1

    check-cast v0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;

    .line 87
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuNativeAppItemView;
    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuCommandReceiver$NativeCommandReceiver;->voiceTrigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->bind(Lcom/google/android/glass/app/VoiceTrigger;)V

    .line 88
    return-void
.end method

.method public createTouchMenuView(Landroid/view/LayoutInflater;Lcom/google/glass/app/GlassActivity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflator"    # Landroid/view/LayoutInflater;
    .param p2, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 93
    sget v1, Lcom/google/glass/home/R$layout;->touch_menu_native_app_item:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;

    .line 95
    .local v0, "itemView":Lcom/google/glass/home/voice/MainMenuNativeAppItemView;
    invoke-virtual {v0, p2}, Lcom/google/glass/home/voice/MainMenuNativeAppItemView;->setGlassActivity(Lcom/google/glass/app/GlassActivity;)V

    .line 96
    return-object v0
.end method
