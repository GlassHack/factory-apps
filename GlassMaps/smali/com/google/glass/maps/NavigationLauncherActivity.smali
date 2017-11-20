.class public Lcom/google/glass/maps/NavigationLauncherActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationLauncherActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/glass/maps/NavigationLauncherHelper;->launchNavigiation(Landroid/content/Context;Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationLauncherActivity;->finish()V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationLauncherActivity;->processIntent(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 26
    iget-object v0, p0, Lcom/google/glass/maps/NavigationLauncherActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {p0}, Lcom/google/glass/maps/NavigationLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/google/glass/maps/NavigationLauncherActivity;->processIntent(Landroid/content/Intent;)V

    .line 28
    return-void
.end method
