.class public final Lcom/google/glass/voice/menu/GlassMenuRequirements;
.super Lcom/google/glass/voice/menu/Requirements;
.source "SourceFile"


# static fields
.field public static final HAS_FOCUS_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

.field public static final HAS_MESSAGING_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

.field public static final HAS_PHONE_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

.field public static final HAS_VIDEOCALL_CONTACTS:Lcom/google/glass/voice/menu/Requirement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$1;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_FOCUS_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    .line 47
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_FOCUS_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_PHONE_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    .line 49
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_FOCUS_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_MESSAGING_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    .line 51
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_FOCUS_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuRequirements;->HAS_VIDEOCALL_CONTACTS:Lcom/google/glass/voice/menu/Requirement;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/voice/menu/Requirements;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->isCompanionSmsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    return-object v0
.end method

.method public static canSendMessage(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/menu/GlassMenuRequirements$6;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-object v0
.end method

.method private static getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    return-object v0
.end method

.method static hasEmailAddress(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$7;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$7;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-object v0
.end method

.method static hasPhoneNumber(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$8;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$8;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-object v0
.end method

.method private static isCompanionSmsEnabled()Z
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuRequirements;->getRemoteCompanionProxy()Lcom/google/glass/companion/RemoteCompanionProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isSmsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isHeadsetConnected(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isMessagingAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$2;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$2;-><init>()V

    return-object v0
.end method

.method public static isMicAvailable(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$4;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$4;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isNavigationAllowed(Landroid/content/Context;)Lcom/google/glass/voice/menu/Requirement;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuRequirements$5;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuRequirements$5;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
