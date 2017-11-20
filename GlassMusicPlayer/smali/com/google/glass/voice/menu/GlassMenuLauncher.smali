.class public Lcom/google/glass/voice/menu/GlassMenuLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SKIP_ANIMATION:Z = true

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/GlassMenuLauncher;Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logUnsatisfiedRequirements(Ljava/util/List;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/jt;Z)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/menu/TriggerCommandUi;->createUiByLocalizedLabelMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    .line 193
    invoke-interface {p2}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    invoke-interface {p2, v0}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 196
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/InvocationWrapper;

    .line 197
    invoke-virtual {v1}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    goto :goto_1

    .line 200
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 201
    invoke-direct {p0, v0, v6, p3, v4}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newDisambiguationKeyItem(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 203
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InvocationWrapper;

    invoke-direct {p0, v0, p3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newNoDisambiguationRequiredItem(Lcom/google/glass/voice/InvocationWrapper;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 208
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v6

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 213
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {v6, v0, v4, v5}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->insertOnlyIfPreviouslyUnknown(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_3
    move v1, v0

    .line 216
    goto :goto_2

    .line 217
    :cond_4
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "About to load sorted main menu item list"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v6, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getSortedMainMenuItemsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 219
    if-eqz v1, :cond_5

    .line 220
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logMainMenuItems(Ljava/util/List;)V

    .line 222
    :cond_5
    return-object v0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/menu/Requirements;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private logMainMenuItems(Ljava/util/List;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 228
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    const-string v5, " "

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 233
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEMS_LIST:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "m"

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private logUnsatisfiedRequirements(Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 8

    .prologue
    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/Requirement;

    .line 368
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/Requirement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_0
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "t"

    const-string v4, "touch"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "n"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 373
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "ur"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, ","

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 372
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v2, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private newDisambiguationKeyItem(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 259
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InvocationWrapper;

    invoke-static {v0}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 260
    if-eqz p3, :cond_0

    .line 261
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;

    invoke-direct {v0, p0, p3}, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Z)V

    .line 262
    invoke-static {p2, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/w;)Ljava/util/List;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 272
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/TriggerCommandUi;

    invoke-static {v2, v1, p1, v0, v3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindDisamiguationKeyItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Lcom/google/glass/voice/menu/TriggerCommandUi;Z)V

    .line 280
    return-object v1

    .line 275
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/glass/voice/InvocationWrapper;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/voice/InvocationWrapper;

    .line 274
    invoke-static {v0}, Lcom/google/glass/voice/EntityListActivityHelper;->getEntityListActivityIntent([Lcom/google/glass/voice/InvocationWrapper;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private newNoDisambiguationRequiredItem(Lcom/google/glass/voice/InvocationWrapper;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getCommandType()I

    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    .line 244
    invoke-static {v0, v1, v2, p2}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newTopLevelItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 250
    :goto_0
    invoke-static {p1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 251
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 248
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getTrigger()Lcom/google/android/glass/app/VoiceTrigger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newTopLevelItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method private onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 325
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->isConnected()Z

    move-result v5

    move v1, v2

    .line 326
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 327
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 330
    invoke-virtual {v0, v5, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getError(ZZ)Lcom/google/glass/app/GlassError;

    move-result-object v6

    .line 331
    if-nez v6, :cond_1

    move v3, v4

    .line 333
    :goto_1
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getTouchMenuLabel()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    .line 334
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getTouchIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 336
    if-nez v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 338
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/glass/app/GlassError;->getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 337
    invoke-static {v7, v3}, Lcom/google/glass/menu/MenuItemUtils;->setStyleMenuItemForError(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 342
    :cond_0
    new-instance v3, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/app/GlassActivity;I)V

    invoke-interface {v7, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 331
    goto :goto_1

    .line 360
    :cond_2
    return v4
.end method

.method static setGray(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 4

    .prologue
    .line 377
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 379
    return-object p0
.end method


# virtual methods
.method public asContactMenuItems(ZLjava/lang/Iterable;I)Ljava/util/List;
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 300
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 301
    invoke-static {v3, p1, v0, p3}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newContactMenuItem(Landroid/content/Context;ZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    :cond_0
    return-object v1
.end method

.method configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V
    .locals 7

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p2, v0}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->asContactMenuItems(ZLjava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 135
    new-instance v6, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;

    invoke-direct {v6, p0, p4}, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;I)V

    .line 152
    new-instance v0, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 153
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lcom/google/glass/widget/GlasswareIconBinder;

    .line 154
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v3, v4}, Lcom/google/glass/widget/GlasswareIconBinder;-><init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 157
    invoke-virtual {v5}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v5

    .line 156
    invoke-static {v4, p4, v5}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->getPrependEntities(Landroid/content/Context;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;-><init>(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V

    .line 152
    invoke-virtual {p3, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOverflowMenuCallback(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {p2, p4}, Lcom/google/glass/voice/EntityListActivityHelper;->getEntityListActivityIntent(Lcom/google/glass/entity/EntitySet;I)Landroid/content/Intent;

    move-result-object v0

    .line 160
    invoke-virtual {p3, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method getMainMenuItems(Z)Ljava/util/List;
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newSendMessageItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->VCZ:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newVideoCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 186
    invoke-static {v1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/jt;

    move-result-object v1

    .line 187
    invoke-direct {p0, v0, v1, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/jt;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 169
    invoke-static {v1, p2}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/jt;

    move-result-object v1

    .line 170
    invoke-direct {p0, v0, v1, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/jt;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTouchMainMenuItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMainMenuItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMainMenuItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method newCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_call:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->voice_label_make_a_call:I

    .line 91
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/google/glass/entity/EntitySet;->PHONE_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 93
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v5, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_PHONE_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 95
    invoke-static {v5}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isHeadsetConnected(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 96
    invoke-static {v6}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v6

    aput-object v6, v4, v5

    .line 94
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$drawable;->ic_phone_out_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->touch_label_make_a_call:I

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 99
    invoke-virtual {v2, v7}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->no_speakable_phone_contacts:I

    .line 100
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 102
    invoke-static {v2}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 103
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 104
    return-object v0
.end method

.method newSendMessageItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->open_ended_decorator_send_a_message:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->voice_label_send_a_message:I

    .line 73
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/google/glass/entity/EntitySet;->MESSAGING_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 75
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v5, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_MESSAGING_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 78
    invoke-static {v6}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMessagingAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v6

    aput-object v6, v4, v5

    .line 76
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->touch_label_send_a_message:I

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v7}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->no_speakable_messaging_contacts:I

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->SEND_A_MESSAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 84
    invoke-static {v2}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 85
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 86
    return-object v0
.end method

.method newVideoCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 109
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_video_call:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->voice_label_make_a_video_call:I

    .line 110
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/google/glass/entity/EntitySet;->VIDEO_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 113
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v5, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_VIDEOCALL_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 116
    invoke-static {v6}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v6

    aput-object v6, v4, v5

    .line 114
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$drawable;->ic_video_call_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->touch_label_make_a_video_call:I

    .line 118
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v7}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$string;->no_speakable_messaging_contacts:I

    .line 120
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    sget-object v2, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_VIDEO_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 122
    invoke-static {v2}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 123
    const/16 v2, 0xe

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 124
    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 307
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 316
    invoke-virtual {p0, v0, p3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 317
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method
