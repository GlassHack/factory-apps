.class public Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder;


# instance fields
.field private final context:Landroid/content/Context;

.field private final items:Ljava/util/Map;

.field private final listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->items:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;-><init>(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;

    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->items:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getLabel(Lcom/google/android/glass/app/ContextualMenus$Command;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/glass/app/ContextualMenu;->get(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/android/glass/app/ContextualMenu$Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/app/ContextualMenu$Item;->getVoiceMenuLabelId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/CommandValue;Landroid/content/Intent;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->getLabel(Lcom/google/android/glass/app/ContextualMenus$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 115
    iget-object v1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->items:Ljava/util/Map;

    new-instance v2, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;

    invoke-direct {v2, p4}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;-><init>(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public varargs add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 3

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->getLabel(Lcom/google/android/glass/app/ContextualMenus$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/glass/voice/menu/CommandValue;->forContextual(Lcom/google/android/glass/app/ContextualMenus$Command;)Lcom/google/glass/voice/menu/CommandValue;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/glass/voice/menu/Requirement;

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 92
    return-void
.end method

.method public varargs add(Ljava/lang/String;Lcom/google/glass/voice/menu/CommandValue;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->items:Ljava/util/Map;

    new-instance v1, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {v1, p1}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;

    invoke-direct {v2, p3}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$LocalItemAdapter;-><init>(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public addContextHint(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 108
    return-void
.end method

.method public createVoiceMenuDialog()Lcom/google/glass/voice/menu/IVoiceMenuDialog;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    iget-object v1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->listener:Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener$Stub;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V

    .line 66
    iget-object v1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->setPrimaryItems(Ljava/util/List;)V

    .line 67
    iget-object v1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timeline_item"

    iget-object v3, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 69
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 71
    :cond_0
    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method
