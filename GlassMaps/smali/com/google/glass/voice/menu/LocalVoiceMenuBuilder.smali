.class public Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder;


# static fields
.field private static final POST_ANIMATION_DELAY_MS:J = 0x3e8L


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final menuItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 47
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->newEntityTargetMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public static createController(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/glass/voice/ActionController;
    .locals 4

    .prologue
    .line 103
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    const-class v1, Lcom/google/glass/voice/VoiceMessageController;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 110
    invoke-static {p0, p2, v0}, Lcom/google/glass/voice/VoiceMessageController;->create(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/voice/VoiceMessageController;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot instantiate find glass for "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_1
    const-class v1, Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationController;

    .line 114
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot instantiate controller of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private newEntityTargetMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4

    .prologue
    .line 207
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 208
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->isStarred(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget v0, Lcom/google/glass/common/R$drawable;->ic_star_30:I

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuIcon(I)V

    .line 211
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 215
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 216
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setAnimationDelayMillis(J)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 217
    new-instance v0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$4;-><init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 224
    return-object v1

    .line 213
    :cond_1
    invoke-static {p1}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toMenuItems(Ljava/util/List;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Ljava/util/List;
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$3;-><init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V
    .locals 4

    .prologue
    .line 82
    const-string v0, "feature"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "overflow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->newEntityOverflowItem(Landroid/os/Bundle;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "action_controller"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->addRequirement(Lcom/google/glass/voice/menu/Requirement;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 89
    invoke-static {p1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    const-string v3, "action_controller_class"

    .line 92
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v2, v3, p3}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->createController(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/glass/voice/ActionController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 93
    invoke-virtual {v1, p4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 74
    invoke-static {p1}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public varargs add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 66
    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public addContextHint(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->isBoutiqueWelcomeCard(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 236
    invoke-static {p1}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getPackageName(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_0
    return-void
.end method

.method public createVoiceMenuDialog()Lcom/google/glass/voice/menu/IVoiceMenuDialog;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/google/glass/voice/VoiceMenuDialog;

    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/VoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    .line 243
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->getVoiceMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceMenuDialog;->setPrimaryItems(Ljava/util/List;)V

    .line 244
    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getVoiceConfig(Ljava/util/List;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMenuItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public newEntityOverflowItem(Landroid/os/Bundle;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    .line 123
    invoke-static {}, Lcom/google/glass/entity/EntitySet;->values()[Lcom/google/glass/entity/EntitySet;

    move-result-object v0

    const-string v1, "entity_set_ordinal"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 124
    const-string v1, "timeline_item"

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {p1, v1, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromBundle(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v7

    .line 128
    new-instance v8, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 131
    sget-object v1, Lcom/google/glass/entity/EntitySet;->SEND_TARGETS:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v1, v0}, Lcom/google/glass/entity/EntitySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v0}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->SEND_THIS_TO:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 134
    invoke-static {v1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 135
    sget v0, Lcom/google/glass/common/R$string;->no_speakable_messaging_contacts:I

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 136
    const/16 v4, 0x15

    .line 163
    :goto_0
    new-instance v6, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;

    invoke-direct {v6, p0, v8}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$2;-><init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 172
    invoke-virtual {v8, p2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 173
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 174
    invoke-direct {p0, v7, v4, v6}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->toMenuItems(Ljava/util/List;ILcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 175
    new-instance v0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 176
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lcom/google/glass/widget/GlasswareIconBinder;

    .line 177
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v3, v5}, Lcom/google/glass/widget/GlasswareIconBinder;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iget-object v5, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 179
    invoke-static {v5, v4, v7}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->getPrependEntities(Landroid/content/Context;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;-><init>(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V

    .line 175
    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOverflowMenuCallback(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V

    .line 181
    return-object v8

    .line 137
    :cond_0
    sget-object v1, Lcom/google/glass/entity/EntitySet;->SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v1, v0}, Lcom/google/glass/entity/EntitySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    new-instance v0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;

    invoke-direct {v0, p0, v7}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder$1;-><init>(Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;Ljava/util/List;)V

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->addRequirement(Lcom/google/glass/voice/menu/Requirement;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->context:Landroid/content/Context;

    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_THIS_WITH:Lcom/google/android/glass/app/ContextualMenus$Command;

    .line 156
    invoke-static {v1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 157
    sget-object v0, Lcom/google/android/glass/app/ContextualMenus$Command;->SHARE_THIS_WITH:Lcom/google/android/glass/app/ContextualMenus$Command;

    invoke-static {v0}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 158
    const/4 v4, 0x4

    goto :goto_0

    .line 160
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot create overflow menu for EntitySet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
