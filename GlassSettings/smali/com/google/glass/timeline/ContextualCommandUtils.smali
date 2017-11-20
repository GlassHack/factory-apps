.class public final Lcom/google/glass/timeline/ContextualCommandUtils;
.super Ljava/lang/Object;
.source "ContextualCommandUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCommand(I)Lcom/google/android/glass/app/ContextualMenus$Command;
    .locals 1
    .param p0, "menuItemAction"    # I

    .prologue
    const/4 v0, 0x0

    .line 18
    packed-switch p0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-object v0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->REPLY_TO_ALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_THIS_WITH:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 30
    :pswitch_4
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 32
    :pswitch_5
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_MORE:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 34
    :pswitch_6
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->READ_ALOUD:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 36
    :pswitch_7
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->MAKE_A_VIDEO_CALL:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 38
    :pswitch_8
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_A_MESSAGE:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 40
    :pswitch_9
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->DELETE_THIS:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 44
    :pswitch_a
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->PLAY_VIDEO:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 46
    :pswitch_b
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_THE_VOLUME:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 50
    :pswitch_c
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_RESULTS:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 52
    :pswitch_d
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->CALL_THIS_NUMBER:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 54
    :pswitch_e
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_DIRECTIONS:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 56
    :pswitch_f
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->MUTE_MY_MICROPHONE:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 58
    :pswitch_10
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->OPEN_THIS_WEBSITE:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 62
    :pswitch_11
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_MY_LOCATION:Lcom/google/android/glass/app/ContextualMenus$Command;

    goto :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
    .end packed-switch
.end method

.method public static getVoiceLabel(Landroid/content/res/Resources;Lcom/google/android/glass/app/ContextualMenus$Command;)Ljava/lang/String;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "voiceCommand"    # Lcom/google/android/glass/app/ContextualMenus$Command;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceLabel(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "contextualCommandEnumName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/android/glass/app/ContextualMenu;->get(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v0

    .line 76
    .local v0, "item":Lcom/google/android/glass/app/ContextualMenu$Item;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isValidContextualCommand(Ljava/lang/String;)Z
    .locals 1
    .param p0, "contextualCommandEnumName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/android/glass/app/ContextualMenu;->get(Ljava/lang/String;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
