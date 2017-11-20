.class public final Lcom/google/glass/timeline/TimelineMenuUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_MENU_ITEM:Ljava/lang/String; = "extra_menu_item"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineMenuUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static containsAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->menuItem:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 165
    const/4 v1, 0x1

    .line 169
    :cond_0
    return v1

    .line 163
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static containsReadMoreMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->containsAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Z

    move-result v0

    return v0
.end method

.method public static getActionName(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 203
    const-class v1, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem$Action;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 205
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 206
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :cond_0
    return-object v0

    :catch_0
    move-exception v4

    .line 204
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMenuIcon(Landroid/content/Context;Lcom/google/glass/util/IconProvider;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    :cond_1
    return-object v0
.end method

.method public static getMenuItemExtra(Landroid/view/MenuItem;)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_menu_item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_menu_item"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    sget-object v2, Lcom/google/glass/timeline/TimelineMenuUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Invalid TimelineNano.MenuItem attached to MenuItem."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getMenuText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getValueForState(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;
    .locals 5

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    invoke-static {v0}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->value:[Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 66
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuValue;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 71
    :goto_1
    return-object v0

    .line 65
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isBrokenMedia(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 177
    sget-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_IMAGE_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 182
    sget-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldAddPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineMenuUtils;->containsAction(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static shouldOpenInBrowser(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowMenuItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 109
    :pswitch_1
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LSH:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->shareTarget:[Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 114
    :pswitch_3
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/glass/timeline/TimelineItemUtils;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 117
    :pswitch_4
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineMenuUtils;->shouldOpenInBrowser(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->DF:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    goto :goto_0

    .line 129
    :pswitch_6
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->CVT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    sget-object v1, Lcom/google/glass/entity/EntityUtils;->HANGOUTS_GLASSWARE_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntityCache;->isMirrorGlasswareEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    .line 132
    invoke-virtual {v2, p1}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 134
    :pswitch_7
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->VCZ:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
