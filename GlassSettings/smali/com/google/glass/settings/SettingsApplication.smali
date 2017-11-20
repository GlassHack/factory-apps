.class public Lcom/google/glass/settings/SettingsApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SettingsApplication.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/SettingsApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 18
    new-instance v0, Lcom/google/glass/util/SystemIntentSender;

    invoke-direct {v0}, Lcom/google/glass/util/SystemIntentSender;-><init>()V

    invoke-static {v0}, Lcom/google/glass/util/IntentSender;->setInstance(Lcom/google/glass/util/IntentSender;)V

    .line 19
    invoke-static {p0}, Lcom/google/glass/settings/ui/SettingsService;->initialize(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 21
    return-void
.end method
