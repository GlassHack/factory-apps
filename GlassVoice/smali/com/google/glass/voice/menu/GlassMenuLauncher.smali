.class public Lcom/google/glass/voice/menu/GlassMenuLauncher;
.super Ljava/lang/Object;
.source "GlassMenuLauncher.java"


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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/GlassMenuLauncher;Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/view/MenuItem;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logUnsatisfiedRequirements(Ljava/util/List;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/Multimap;Z)Ljava/util/List;
    .locals 14
    .param p3, "spoken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    .local p2, "disambiguationGraph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    iget-object v11, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-static {v11}, Lcom/google/glass/voice/menu/TriggerCommandUi;->createUiByLocalizedLabelMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    .line 193
    .local v8, "uiByLabel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/glass/voice/menu/TriggerCommandUi;>;"
    invoke-interface/range {p2 .. p2}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 195
    .local v6, "label":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v11

    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 196
    .local v2, "implementations":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/glass/voice/InvocationWrapper;

    .line 197
    .local v10, "wrapper":Lcom/google/glass/voice/InvocationWrapper;
    invoke-virtual {v10}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_1

    .line 200
    .end local v10    # "wrapper":Lcom/google/glass/voice/InvocationWrapper;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    if-le v11, v13, :cond_3

    .line 201
    move/from16 v0, p3

    invoke-direct {p0, v6, v2, v0, v8}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newDisambiguationKeyItem(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    .line 203
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/glass/voice/InvocationWrapper;

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newNoDisambiguationRequiredItem(Lcom/google/glass/voice/InvocationWrapper;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    .end local v2    # "implementations":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/InvocationWrapper;>;"
    .end local v6    # "label":Ljava/lang/String;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 207
    .local v3, "installTime":J
    iget-object v11, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 208
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getInstance(Landroid/content/ContentResolver;)Lcom/google/glass/voice/menu/GlassMenuUsageContract;

    move-result-object v1

    .line 209
    .local v1, "contract":Lcom/google/glass/voice/menu/GlassMenuUsageContract;
    const/4 v5, 0x0

    .line 211
    .local v5, "isNewCommandInstalled":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 213
    .local v9, "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {v9}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getCommandValue()Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/glass/voice/menu/CommandValue;->getMainMenuSortingName()Ljava/lang/String;

    move-result-object v12

    .line 212
    invoke-virtual {v1, v12, v3, v4}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->insertOnlyIfPreviouslyUnknown(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 214
    const/4 v5, 0x1

    goto :goto_2

    .line 217
    .end local v9    # "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_6
    sget-object v11, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v12, "About to load sorted main menu item list"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v1, p1}, Lcom/google/glass/voice/menu/GlassMenuUsageContract;->getSortedMainMenuItemsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 219
    .local v7, "sortedMainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    if-eqz v5, :cond_7

    .line 220
    invoke-direct {p0, v7}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->logMainMenuItems(Ljava/util/List;)V

    .line 222
    :cond_7
    return-object v7
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v0, "commands":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 233
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEMS_LIST:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "m"

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private logUnsatisfiedRequirements(Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 9
    .param p2, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/Requirement;",
            ">;",
            "Landroid/view/MenuItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "unsatisfiedRequirements":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/Requirement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "requirementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/Requirement;

    .line 368
    .local v0, "requirement":Lcom/google/glass/voice/menu/Requirement;
    invoke-virtual {v0}, Lcom/google/glass/voice/menu/Requirement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v0    # "requirement":Lcom/google/glass/voice/menu/Requirement;
    :cond_0
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->INPUT_BLOCKED:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "t"

    const-string v5, "touch"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "n"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 373
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "ur"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, ","

    invoke-static {v8, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 372
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 371
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private newDisambiguationKeyItem(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
    .param p3, "spoken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/menu/TriggerCommandUi;",
            ">;)",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;"
        }
    .end annotation

    .prologue
    .local p2, "invocationWrappers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/InvocationWrapper;>;"
    .local p4, "uiByLabel":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/glass/voice/menu/TriggerCommandUi;>;"
    const/4 v3, 0x1

    .line 258
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/InvocationWrapper;

    invoke-static {v1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 260
    if-eqz p3, :cond_0

    .line 261
    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;

    invoke-direct {v1, p0, p3}, Lcom/google/glass/voice/menu/GlassMenuLauncher$2;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Z)V

    .line 262
    invoke-static {p2, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 272
    invoke-virtual {v0, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/TriggerCommandUi;

    invoke-static {v2, v0, p1, v1, v3}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindDisamiguationKeyItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Lcom/google/glass/voice/menu/TriggerCommandUi;Z)V

    .line 280
    return-object v0

    .line 275
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/glass/voice/InvocationWrapper;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/glass/voice/InvocationWrapper;

    .line 274
    invoke-static {v1}, Lcom/google/glass/voice/EntityListActivityHelper;->getEntityListActivityIntent([Lcom/google/glass/voice/InvocationWrapper;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private newNoDisambiguationRequiredItem(Lcom/google/glass/voice/InvocationWrapper;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4
    .param p1, "invocationWrapper"    # Lcom/google/glass/voice/InvocationWrapper;
    .param p2, "spoken"    # Z

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->isMirror()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getCommandType()I

    move-result v2

    .line 245
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    .line 244
    invoke-static {v1, v2, v3, p2}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newTopLevelItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 250
    .local v0, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :goto_0
    invoke-static {p1}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/glass/voice/InvocationWrapper;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 251
    return-object v0

    .line 247
    .end local v0    # "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 248
    invoke-virtual {p1}, Lcom/google/glass/voice/InvocationWrapper;->getTrigger()Lcom/google/android/glass/app/VoiceTrigger;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/google/glass/voice/menu/TriggerCommandMenuItem;->newTopLevelItem(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .restart local v0    # "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    goto :goto_0
.end method

.method private onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z
    .locals 10
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/app/GlassActivity;",
            "Landroid/view/Menu;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 325
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->isConnected()Z

    move-result v2

    .line 326
    .local v2, "isConnected":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 327
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 330
    .local v3, "mainMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {v3, v2, v8}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getError(ZZ)Lcom/google/glass/app/GlassError;

    move-result-object v0

    .line 331
    .local v0, "error":Lcom/google/glass/app/GlassError;
    if-nez v0, :cond_1

    move v4, v7

    .line 333
    .local v4, "meetsRequirements":Z
    :goto_1
    invoke-virtual {v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getTouchMenuLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v9}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 334
    .local v6, "optionMenuItem":Landroid/view/MenuItem;
    invoke-virtual {v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getTouchIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 336
    if-nez v4, :cond_0

    .line 337
    iget-object v9, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 338
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/glass/app/GlassError;->getPrimaryMessageText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 337
    invoke-static {v6, v9}, Lcom/google/glass/menu/MenuItemUtils;->setStyleMenuItemForError(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    move v5, v1

    .line 342
    .local v5, "menuIndex":I
    new-instance v9, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;

    invoke-direct {v9, p0, v3, p1, v5}, Lcom/google/glass/voice/menu/GlassMenuLauncher$3;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/app/GlassActivity;I)V

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "meetsRequirements":Z
    .end local v5    # "menuIndex":I
    .end local v6    # "optionMenuItem":Landroid/view/MenuItem;
    :cond_1
    move v4, v8

    .line 331
    goto :goto_1

    .line 360
    .end local v0    # "error":Lcom/google/glass/app/GlassError;
    .end local v3    # "mainMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_2
    return v7
.end method

.method static setGray(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 4
    .param p0, "span"    # Landroid/text/SpannableStringBuilder;

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
    .param p1, "spoken"    # Z
    .param p3, "menuItemAction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "contactEntities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 299
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 300
    .local v0, "contactEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 301
    invoke-static {v3, p1, v0, p3}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newContactMenuItem(Landroid/content/Context;ZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 300
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v0    # "contactEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_0
    return-object v1
.end method

.method configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V
    .locals 9
    .param p1, "spoken"    # Z
    .param p2, "entitySet"    # Lcom/google/glass/entity/EntitySet;
    .param p3, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p4, "menuItemAction"    # I

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {p2, v7}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v8

    .line 132
    .local v8, "voiceMenuEntities":Lcom/google/glass/entity/EntityList;
    invoke-virtual {v8}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->asContactMenuItems(ZLjava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 135
    new-instance v6, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;

    invoke-direct {v6, p0, p4}, Lcom/google/glass/voice/menu/GlassMenuLauncher$1;-><init>(Lcom/google/glass/voice/menu/GlassMenuLauncher;I)V

    .line 152
    .local v6, "entityCallback":Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;
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
    invoke-virtual {v8}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v5

    .line 156
    invoke-static {v4, p4, v5}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;->getPrependEntities(Landroid/content/Context;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/entity/EntityOverflowMenuCallback;-><init>(Landroid/content/ContentResolver;Landroid/view/LayoutInflater;Lcom/google/glass/widget/GlasswareIconBinder;ILjava/util/List;Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;)V

    .line 152
    invoke-virtual {p3, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOverflowMenuCallback(Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;)V

    .line 163
    .end local v6    # "entityCallback":Lcom/google/glass/voice/entity/EntityOverflowMenuCallback$EntityCallback;
    .end local v7    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v8    # "voiceMenuEntities":Lcom/google/glass/entity/EntityList;
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
    .locals 3
    .param p1, "spoken"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newSendMessageItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    sget-object v2, Lcom/google/glass/util/Labs$Feature;->VCZ:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->newVideoCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 186
    invoke-static {v2}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 187
    .local v0, "disambiguationGraph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-direct {p0, v1, v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/Multimap;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "spoken"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 168
    .local v1, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 169
    invoke-static {v2, p2}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 170
    .local v0, "disambiguationGraph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-direct {p0, v1, v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItemsInternal(Ljava/util/List;Lcom/google/common/collect/Multimap;Z)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getTouchMainMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMainMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMainMenuItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method newCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 10
    .param p1, "spoken"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 90
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_call:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v7, Lcom/google/glass/common/R$string;->voice_label_make_a_call:I

    .line 91
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 90
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "label":Ljava/lang/String;
    sget-object v0, Lcom/google/glass/entity/EntitySet;->PHONE_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 93
    .local v0, "entitySet":Lcom/google/glass/entity/EntitySet;
    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v6, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_PHONE_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 95
    invoke-static {v6}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isHeadsetConnected(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 96
    invoke-static {v7}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v7

    aput-object v7, v5, v6

    .line 94
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 97
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_phone_out_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->touch_label_make_a_call:I

    .line 98
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 99
    invoke-virtual {v3, v8}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$string;->no_speakable_phone_contacts:I

    .line 100
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 101
    invoke-virtual {v3, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget-object v4, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 102
    invoke-static {v4}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 103
    .local v1, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    const/16 v3, 0x8

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 104
    return-object v1
.end method

.method newSendMessageItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 10
    .param p1, "spoken"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 72
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->open_ended_decorator_send_a_message:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v7, Lcom/google/glass/common/R$string;->voice_label_send_a_message:I

    .line 73
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 72
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "label":Ljava/lang/String;
    sget-object v0, Lcom/google/glass/entity/EntitySet;->MESSAGING_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 75
    .local v0, "entitySet":Lcom/google/glass/entity/EntitySet;
    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v6, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v6, v5, v9

    sget-object v6, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_MESSAGING_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 78
    invoke-static {v7}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMessagingAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v7

    aput-object v7, v5, v6

    .line 76
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->touch_label_send_a_message:I

    .line 79
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v8}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$string;->no_speakable_messaging_contacts:I

    .line 82
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 83
    invoke-virtual {v3, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget-object v4, Lcom/google/android/glass/app/VoiceTriggers$Command;->SEND_A_MESSAGE:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 84
    invoke-static {v4}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 85
    .local v1, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    const/16 v3, 0x12

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 86
    return-object v1
.end method

.method newVideoCallItem(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 10
    .param p1, "spoken"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 109
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v4, Lcom/google/glass/common/R$string;->open_ended_decorator_make_a_video_call:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v7, Lcom/google/glass/common/R$string;->voice_label_make_a_video_call:I

    .line 110
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 109
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "label":Ljava/lang/String;
    sget-object v0, Lcom/google/glass/entity/EntitySet;->VIDEO_CALL_CONTACTS:Lcom/google/glass/entity/EntitySet;

    .line 113
    .local v0, "entitySet":Lcom/google/glass/entity/EntitySet;
    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/glass/voice/menu/Requirement;

    sget-object v6, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_VIDEOCALL_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    aput-object v6, v5, v9

    sget-object v6, Lcom/google/glass/voice/menu/GlassMenuRequirements;->IS_CONNECTED:Lcom/google/glass/voice/menu/Requirement;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 116
    invoke-static {v7}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;

    move-result-object v7

    aput-object v7, v5, v6

    .line 114
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    .line 117
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_video_call_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/voice/menu/GlassMenuLauncher;->context:Landroid/content/Context;

    sget v5, Lcom/google/glass/common/R$string;->touch_label_make_a_video_call:I

    .line 118
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setTouchMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v8}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$string;->no_speakable_messaging_contacts:I

    .line 120
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setEmptySubmenuMessage(I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    .line 121
    invoke-virtual {v3, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    sget-object v4, Lcom/google/android/glass/app/VoiceTriggers$Command;->MAKE_A_VIDEO_CALL:Lcom/google/android/glass/app/VoiceTriggers$Command;

    .line 122
    invoke-static {v4}, Lcom/google/glass/voice/menu/CommandValue;->forTrigger(Lcom/google/android/glass/app/VoiceTriggers$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setCommandValue(Lcom/google/glass/voice/menu/CommandValue;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 123
    .local v1, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    const/16 v3, 0xe

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->configureTopLevelContactItem(ZLcom/google/glass/entity/EntitySet;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 124
    return-object v1
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 307
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getMainMenuItems(Z)Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/lang/String;)Z
    .locals 3
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 316
    invoke-virtual {p0, v1, p3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getPackageSpecificMainMenuItems(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "mainMenuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenuInternal(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/util/List;)Z

    move-result v1

    goto :goto_0
.end method
