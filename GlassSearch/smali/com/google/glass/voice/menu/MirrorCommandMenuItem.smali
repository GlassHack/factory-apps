.class public Lcom/google/glass/voice/menu/MirrorCommandMenuItem;
.super Ljava/lang/Object;
.source "MirrorCommandMenuItem.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static newBaseItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandType"    # I
    .param p2, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "spoken"    # Z

    .prologue
    .line 22
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    .line 24
    .local v2, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-static {p1, p3, p2}, Lcom/google/glass/voice/MirrorInvocationController;->getInvocationIntent(IZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/glass/voice/MirrorInvocationController;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/MirrorInvocationController;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    .local v0, "controller":Lcom/google/glass/voice/MirrorInvocationController;
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setActionController(Lcom/google/glass/voice/ActionController;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v3

    new-instance v4, Lcom/google/glass/voice/menu/MirrorCommandMenuItem$1;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setOnVoiceMenuItemSelectedListener(Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setIntent(Landroid/content/Intent;)V

    .line 35
    invoke-static {p1, p2}, Lcom/google/glass/voice/MirrorInvocationController;->isInputExpected(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setVoicePendingAfterTrigger(Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 36
    return-object v2
.end method

.method public static newDisambiguationItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandType"    # I
    .param p2, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "spoken"    # Z

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newBaseItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 51
    .local v1, "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-static {p0, p2}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "qualifiedName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindDisambiguationItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-object v1
.end method

.method public static newTopLevelItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandType"    # I
    .param p2, "shareTarget"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "spoken"    # Z

    .prologue
    .line 41
    invoke-static {p0, p1, p2, p3}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newBaseItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    .line 43
    .local v0, "voiceMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-static {p0, v0, p1}, Lcom/google/glass/voice/menu/TriggerCommandUi;->bindMirrorCommandMenuItem(Landroid/content/Context;Lcom/google/glass/voice/menu/VoiceMenuItem;I)V

    .line 44
    return-object v0
.end method

.method public static newTouchMenuItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "commandType"    # I
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "spoken":Z
    invoke-static {p0, p1, p2, v0}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newTopLevelItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;Z)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    return-object v1
.end method
