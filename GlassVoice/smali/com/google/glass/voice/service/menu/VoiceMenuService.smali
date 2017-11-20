.class public Lcom/google/glass/voice/service/menu/VoiceMenuService;
.super Landroid/app/Service;
.source "VoiceMenuService.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private dialog:Lcom/google/glass/voice/VoiceMenuDialog;

.field private handler:Landroid/os/Handler;

.field private invocationLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

.field private listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

.field private remoteVoiceMenuItems:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

.field private voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V

    iput-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p1, "x1"    # Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceInputHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/voice/service/menu/VoiceMenuService;[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p1, "x1"    # [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->remoteVoiceMenuItems:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->invocationLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/service/menu/VoiceMenuService;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->createDialog(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Lcom/google/glass/voice/VoiceMenuDialog;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->dialog:Lcom/google/glass/voice/VoiceMenuDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p1, "x1"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->dialog:Lcom/google/glass/voice/VoiceMenuDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/glass/voice/service/menu/VoiceMenuService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;
    .param p1, "x1"    # Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->asVoiceMenuItem(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private applyController(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "localItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "featureExtras"    # Landroid/os/Bundle;

    .prologue
    .line 283
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 284
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "action_controller_class"

    .line 285
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {p0, v2, v1}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->createController(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Lcom/google/glass/voice/ActionController;

    move-result-object v0

    .line 286
    .local v0, "controller":Lcom/google/glass/voice/ActionController;
    invoke-virtual {p1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 287
    return-void
.end method

.method private applyEntityOverflow(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 2
    .param p1, "localItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "featureExtras"    # Landroid/os/Bundle;

    .prologue
    .line 290
    new-instance v0, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getOnVoiceMenuItemSelectedListener()Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    move-result-object v1

    .line 290
    invoke-virtual {v0, p2, v1}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->newEntityOverflowItem(Landroid/os/Bundle;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method private applyFeatureExtras(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 3
    .param p1, "voiceMenuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "remoteItem"    # Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .prologue
    .line 271
    invoke-virtual {p2}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 272
    .local v1, "featureExtras":Landroid/os/Bundle;
    const-string v2, "feature"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "feature":Ljava/lang/String;
    const-string v2, "action_controller"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-direct {p0, p1, v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->applyController(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/os/Bundle;)V

    .line 279
    .end local p1    # "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_0
    :goto_0
    return-object p1

    .line 275
    .restart local p1    # "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_1
    const-string v2, "overflow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-direct {p0, p1, v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->applyEntityOverflow(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object p1

    goto :goto_0
.end method

.method private asVoiceMenuItem(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 4
    .param p1, "remoteItem"    # Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .prologue
    .line 244
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoiceMenuLabel(Ljava/lang/String;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 245
    .local v1, "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getSubMenu()[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getSubMenu()[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->asVoiceMenuItems([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "subMenu":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setSubMenu(Ljava/util/List;)V

    .line 249
    .end local v0    # "subMenu":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    :cond_0
    new-instance v2, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService$5;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 265
    invoke-direct {p0, v1, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->applyFeatureExtras(Lcom/google/glass/voice/menu/VoiceMenuItem;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 266
    return-object v1
.end method

.method private asVoiceMenuItems([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Ljava/util/List;
    .locals 2
    .param p1, "remoteItems"    # [Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/service/menu/VoiceMenuService$4;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$4;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createDialog(Ljava/util/List;)V
    .locals 2
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
    .line 196
    .local p1, "voiceMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-static {p1}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getVoiceConfig(Ljava/util/List;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 197
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    new-instance v1, Lcom/google/glass/voice/service/menu/VoiceMenuService$3;

    invoke-direct {v1, p0, p0, v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$3;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V

    iput-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->dialog:Lcom/google/glass/voice/VoiceMenuDialog;

    .line 203
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->dialog:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v1, p1}, Lcom/google/glass/voice/VoiceMenuDialog;->setPrimaryItems(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method private getHintedItems(Landroid/os/Bundle;)Ljava/util/Collection;
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 219
    .local v1, "hintedItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const-string v4, "timeline_item"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    :try_start_0
    const-string v4, "timeline_item"

    .line 222
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v2

    .line 223
    .local v2, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    new-instance v3, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v3, "voiceMenuBuilder":Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;
    invoke-virtual {v3, v2}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->addContextHint(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 225
    invoke-virtual {v3}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->getVoiceMenuItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "voiceMenuBuilder":Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;
    :cond_0
    :goto_0
    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v4, Lcom/google/glass/voice/service/menu/VoiceMenuService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to parse TimelineItem"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getContextualItems(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 208
    .local v0, "contextualItems":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->remoteVoiceMenuItems:[Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->asVoiceMenuItems([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-direct {p0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->getHintedItems(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setBottomSpacer()Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 214
    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->handler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/google/glass/voice/service/menu/VoiceMenuService$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$2;-><init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V

    .line 182
    .local v0, "voiceListener":Lcom/google/glass/voice/VoiceListener;
    new-instance v1, Lcom/google/glass/voice/VoiceInputHelper;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/voice/VoiceInputHelper;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceListener;)V

    iput-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    .line 184
    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    iget-object v2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    new-instance v3, Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-direct {v3, p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V

    iput-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->invocationLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .line 186
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    iget-object v2, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->invocationLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 187
    iget-object v1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    new-instance v2, Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    iget-object v3, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService;->voiceInputHelper:Lcom/google/glass/voice/VoiceInputHelper;

    invoke-direct {v2, p0, v3}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;-><init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoader(Lcom/google/glass/voice/GrammarLoader;)Lcom/google/glass/voice/VoiceInputHelper;

    .line 188
    return-void
.end method
