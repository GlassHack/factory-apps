.class public Lcom/google/glass/timeline/TimelineMenuBuilder;
.super Ljava/lang/Object;
.source "TimelineMenuBuilder.java"


# static fields
.field public static final DESCRIPTION_MAX_LEN:I = 0x1e

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final callHelper:Lcom/google/glass/phone/PhoneCallHelper;

.field private final context:Landroid/content/Context;

.field private final iconProvider:Lcom/google/glass/util/IconProvider;

.field private final videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineMenuBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconProvider"    # Lcom/google/glass/util/IconProvider;

    .prologue
    .line 61
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/google/glass/videocall/VideoCallHelperProvider;->getInstance()Lcom/google/glass/videocall/VideoCallHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/videocall/VideoCallHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/videocall/VideoCallHelper;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;-><init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/videocall/VideoCallHelper;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/IconProvider;Lcom/google/glass/phone/PhoneCallHelper;Lcom/google/glass/videocall/VideoCallHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconProvider"    # Lcom/google/glass/util/IconProvider;
    .param p3, "callHelper"    # Lcom/google/glass/phone/PhoneCallHelper;
    .param p4, "videoCallHelper"    # Lcom/google/glass/videocall/VideoCallHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 70
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    .line 71
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineMenuBuilder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineMenuBuilder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method private addBroadcast(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 260
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 261
    invoke-virtual {p0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->isMenuEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 262
    return-void
.end method

.method private addDelete(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v4, 0x1

    .line 313
    const/4 v5, 0x0

    .line 316
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v0

    if-ne v4, v0, :cond_0

    iget-object v0, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 317
    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v1, p4, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v7, v1, v0

    .line 319
    .local v7, "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_delete_auto_backup_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    .end local v7    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_50:I

    .line 327
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 326
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 328
    return-void

    .line 318
    .restart local v7    # "attachment":Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addGetMediaInput(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    .line 477
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 479
    .local v7, "item":Landroid/view/MenuItem;
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 480
    return-void
.end method

.method private addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isEnabled"    # Z
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "extra"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 504
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 505
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 506
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 507
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 508
    invoke-static {v0, p6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->setMenuItemExtra(Landroid/view/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 509
    return-object v0
.end method

.method private addMenuItem(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;ZZ)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isContentClipped"    # Z
    .param p5, "isConnected"    # Z

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v2

    .line 171
    .local v2, "menuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 249
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    invoke-direct {p0, p1, v2, p3, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addBroadcast(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p5

    .line 177
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addReply(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addReplyAll(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addSendMessage(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 186
    :pswitch_5
    invoke-direct {p0, p1, v2, p3, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addDelete(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 189
    :pswitch_6
    invoke-direct {p0, p1, v2, p3, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addShare(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 192
    :pswitch_7
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addSend(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 195
    :pswitch_8
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addRetry(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 198
    :pswitch_9
    if-eqz p4, :cond_0

    .line 199
    invoke-direct {p0, p1, v2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addReadMore(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;)V

    goto :goto_0

    .line 203
    :pswitch_a
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addReadAloud(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 206
    :pswitch_b
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addVoiceCall(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 209
    :pswitch_c
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addVideoCall(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 212
    :pswitch_d
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addNavigate(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 215
    :pswitch_e
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addSearch(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 218
    :pswitch_f
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMuteMic(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    goto :goto_0

    .line 221
    :pswitch_10
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addOpenUri(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 224
    :pswitch_11
    invoke-direct {p0, p1, v2, p3, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addTogglePinned(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    goto :goto_0

    .line 227
    :pswitch_12
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addPlayVideo(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 230
    :pswitch_13
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addVolume(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 233
    :pswitch_14
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addShowRecipients(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 236
    :pswitch_15
    invoke-direct {p0, p1, v2, p3, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addGetMediaInput(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V

    goto :goto_0

    .line 239
    :pswitch_16
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addShareLocation(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 242
    :pswitch_17
    invoke-direct {p0, p1, v2, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addPlayAudio(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_3
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_11
        :pswitch_9
        :pswitch_12
        :pswitch_4
        :pswitch_13
        :pswitch_14
        :pswitch_7
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_17
    .end packed-switch
.end method

.method private addMuteMic(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "timelineMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 410
    const-string v1, ""

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 411
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Landroid/view/MenuItem;)V

    .line 412
    invoke-static {v0, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->setMenuItemExtra(Landroid/view/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 413
    return-object v0
.end method

.method private addNavigate(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    .line 385
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_directions_50:I

    .line 386
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 385
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 387
    .local v7, "item":Landroid/view/MenuItem;
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 388
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 389
    return-void
.end method

.method private addOpenUri(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    const/16 v1, 0x1e

    .line 423
    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, "uri":Ljava/lang/String;
    move-object v5, v9

    .line 425
    .local v5, "description":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 426
    const/4 v0, 0x0

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    :cond_0
    invoke-static {v9}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldOpenInBrowser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    sget v8, Lcom/google/glass/common/R$string;->timeline_menu_view_website:I

    .line 437
    .local v8, "stringResId":I
    :goto_0
    invoke-direct {p0, p3, v8}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_world_50:I

    .line 438
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 437
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 439
    .local v7, "item":Landroid/view/MenuItem;
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 440
    return-void

    .line 432
    .end local v7    # "item":Landroid/view/MenuItem;
    .end local v8    # "stringResId":I
    :cond_1
    sget v8, Lcom/google/glass/common/R$string;->timeline_menu_open:I

    .line 433
    .restart local v8    # "stringResId":I
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private addPlayAudio(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 488
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_play_audio:I

    invoke-direct {p0, p3, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_play_50:I

    .line 489
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 488
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 490
    return-void
.end method

.method private addPlayVideo(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 443
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_play_50:I

    .line 444
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 443
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 445
    return-void
.end method

.method private addReadAloud(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 355
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_read_aloud_50:I

    .line 356
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 355
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 357
    return-void
.end method

.method private addReadMore(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    .prologue
    .line 153
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    const/16 v3, 0x10

    .line 154
    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v1

    .line 155
    .local v1, "timelineMenuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    invoke-direct {p0, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 156
    .local v0, "menuItem":Landroid/view/MenuItem;
    sget v2, Lcom/google/glass/common/R$drawable;->ic_document_50:I

    invoke-direct {p0, p2, v2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 157
    invoke-static {v0, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->setMenuItemExtra(Landroid/view/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 158
    return-void
.end method

.method private addReply(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p5, "isConnected"    # Z

    .prologue
    .line 266
    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_50:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 267
    .local v3, "menuIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {p4}, Lcom/google/glass/timeline/TimelineItemUtils;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_retry:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getCallOrVideoCallStatusDescription()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "description":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 272
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 275
    .local v7, "item":Landroid/view/MenuItem;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    goto :goto_0
.end method

.method private addReplyAll(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getCallOrVideoCallStatusDescription()Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "description":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_all_50:I

    .line 285
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 284
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 287
    .local v7, "item":Landroid/view/MenuItem;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 290
    :cond_0
    return-void
.end method

.method private addRetry(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 350
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_retry:I

    invoke-direct {p0, p3, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_50:I

    .line 351
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 350
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 352
    return-void
.end method

.method private addSearch(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    .line 393
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_search_50:I

    .line 394
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 393
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 395
    .local v7, "item":Landroid/view/MenuItem;
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 396
    return-void
.end method

.method private addSend(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 344
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_50:I

    .line 345
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 344
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 346
    return-void
.end method

.method private addSendMessage(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Z)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "isConnected"    # Z

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getCallOrVideoCallStatusDescription()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "description":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    .line 296
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 295
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v7

    .line 298
    .local v7, "item":Landroid/view/MenuItem;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/google/glass/voice/menu/Requirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    invoke-direct {p0, v7, v0, p4}, Lcom/google/glass/timeline/TimelineMenuBuilder;->checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V

    .line 301
    :cond_0
    return-void
.end method

.method private addShare(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 332
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityCache;->getShareTargets(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/util/List;

    move-result-object v7

    .line 333
    .local v7, "shareTargets":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_50:I

    .line 335
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 334
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_50:I

    .line 339
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 338
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private addShareLocation(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 483
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_location_50:I

    .line 484
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 483
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 485
    return-void
.end method

.method private addShowRecipients(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 471
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_show_recipients:I

    invoke-direct {p0, p3, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_people_50:I

    .line 472
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 471
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 473
    return-void
.end method

.method private addTogglePinned(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p4, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 449
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_unpin:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_unpin_50:I

    .line 451
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 450
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_pin:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_pin_50:I

    .line 454
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 453
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private addVideoCall(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->unavailable_in_phone_call:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 378
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_video_call_50:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 380
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 378
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 381
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->videoCallHelper:Lcom/google/glass/videocall/VideoCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/videocall/VideoCallHelper;->isInVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->unavailable_in_video_call:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addVoiceCall(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuValue"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p3, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 360
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const/4 v5, 0x0

    .line 362
    .local v5, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_call:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 365
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_out_50:I

    .line 366
    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    .line 365
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 369
    .end local v5    # "description":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addVolume(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 466
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->CHANGE_THE_VOLUME:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    .line 467
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_volume_full_50:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 466
    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 468
    return-void
.end method

.method private checkRequirement(Landroid/view/MenuItem;Lcom/google/glass/voice/menu/Requirement;Z)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "requirement"    # Lcom/google/glass/voice/menu/Requirement;
    .param p3, "isConnected"    # Z

    .prologue
    .line 521
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/google/glass/voice/menu/Requirement;->isSatisfied(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {p2}, Lcom/google/glass/voice/menu/Requirement;->getError()Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 523
    .local v0, "error":Lcom/google/glass/app/GlassError;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    .line 524
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassError;->getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 523
    invoke-static {p1, v1}, Lcom/google/glass/menu/MenuItemUtils;->setStyleMenuItemForError(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 525
    new-instance v1, Lcom/google/glass/timeline/TimelineMenuBuilder$1;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder$1;-><init>(Lcom/google/glass/timeline/TimelineMenuBuilder;Lcom/google/glass/app/GlassError;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 533
    .end local v0    # "error":Lcom/google/glass/app/GlassError;
    :cond_0
    return-void
.end method

.method private getCallOrVideoCallStatusDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->callHelper:Lcom/google/glass/phone/PhoneCallHelper;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->phone_call_in_call:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p2, "defaultResId"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-static {v0, v1, p1, p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuIcon(Landroid/content/Context;Lcom/google/glass/util/IconProvider;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMenuText(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .param p2, "defaultResId"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Ljava/lang/String;
    .locals 1
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTouchMenuLabel(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Ljava/lang/String;
    .locals 3
    .param p1, "menuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .param p2, "defaultResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 554
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getVoiceCommand()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/timeline/ContextualCommandUtils;->isValidContextualCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getVoiceCommand()Ljava/lang/String;

    move-result-object v2

    .line 570
    :goto_0
    return-object v2

    .line 558
    :cond_0
    const/4 v2, 0x0

    .line 559
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v1

    .line 560
    .local v1, "defaultMenuValue":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 561
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v2

    invoke-static {v2}, Lcom/google/glass/timeline/ContextualCommandUtils;->getDefaultCommand(I)Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v0

    .line 564
    .local v0, "command":Lcom/google/android/glass/app/ContextualMenus$Command;
    if-eqz v0, :cond_2

    .line 565
    invoke-virtual {v0}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 567
    :cond_2
    if-lez p2, :cond_3

    .line 568
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 570
    :cond_3
    const-string v2, ""

    goto :goto_0
.end method

.method private static setMenuItemExtra(Landroid/view/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V
    .locals 3
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "timelineMenuItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_menu_item"

    .line 418
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 419
    return-void
.end method


# virtual methods
.method public addMuteMic(Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 404
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 405
    .local v0, "timelineMenuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 406
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMuteMic(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    return-object v1
.end method

.method public addVolume(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 460
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 461
    .local v0, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 462
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addVolume(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 463
    return-void
.end method

.method public handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public handlePrepareOptionsMenu(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Z)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p3, "isContentClipped"    # Z

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No item to populate options."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 100
    :cond_0
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/google/glass/timeline/TimelineMenuBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Item is broken media; not adding menu options."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldAddPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    move-result-object v3

    .line 108
    .local v3, "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addPlayVideo(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 112
    .end local v3    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Lcom/google/glass/timeline/TimelineMenuUtils;->containsReadMoreMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addReadMore(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;)V

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/menu/Requirements;->isConnected(Landroid/content/Context;)Z

    move-result v5

    .line 121
    .local v5, "isConnected":Z
    iget-object v0, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 122
    iget-object v7, p2, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    aget-object v3, v7, v6

    .line 123
    .restart local v3    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v0, p2, v3}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldShowMenuItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p3

    .line 124
    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;ZZ)V

    .line 122
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 132
    .end local v3    # "menuItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_5
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PZ:Lcom/google/glass/util/Labs$Feature;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineMenuBuilder;->context:Landroid/content/Context;

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.glass.prototype.pz"

    .line 132
    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    new-instance v12, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v12}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 137
    .local v12, "zoomItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    const/4 v0, 0x7

    invoke-virtual {v12, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 138
    const-string v0, "com.google.glass.prototype.pz.ACTION"

    invoke-virtual {v12, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setBroadcastAction(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 141
    const-string v8, "Zoom"

    const/4 v0, 0x0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_photo_50:I

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineMenuBuilder;->getMenuIcon(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/glass/timeline/TimelineMenuBuilder;->addMenuItem(Landroid/view/Menu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Landroid/view/MenuItem;

    .line 145
    .end local v12    # "zoomItem":Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :cond_6
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected isMenuEnabled(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method
