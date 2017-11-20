.class public Lcom/google/glass/sync/SyncApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "SyncApplication.java"


# static fields
.field public static final LOGGING_GROUP:Ljava/lang/String; = "glass_sync"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    .line 18
    const-string v0, "glass_sync"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/SyncApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    iget-object v0, p0, Lcom/google/glass/sync/SyncApplication;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 25
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 29
    invoke-static {v3}, Lcom/google/glass/deferredcontent/LoadingTask;->setAllowAlphaFade(Z)V

    .line 30
    invoke-static {v3}, Lcom/google/glass/widget/DynamicSizeTextView;->setAllowSizeOnBackgroundThread(Z)V

    .line 34
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v0

    new-instance v1, Lcom/google/glass/menu/SafeGlassMenuHelper;

    invoke-direct {v1}, Lcom/google/glass/menu/SafeGlassMenuHelper;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/glass/menu/GlassMenuHelperProvider;->setGlassMenuHelper(Lcom/google/glass/menu/GlassMenuHelper;)V

    .line 35
    return-void
.end method

.method protected shouldLoadEntityCache()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method
