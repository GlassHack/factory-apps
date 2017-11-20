.class public Lcom/google/glass/music/MediaButtonDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field rccIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/music/MediaButtonDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/music/MediaButtonDispatcher;->TAG:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/google/glass/music/MediaButtonDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/music/MediaButtonDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/music/MediaButtonDispatcher;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/glass/music/MediaButtonDispatcher;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/glass/music/MediaButtonDispatcher;->rccIntent:Landroid/app/PendingIntent;

    .line 29
    return-void
.end method


# virtual methods
.method public sendMediaButtonClick(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    iget-object v2, p0, Lcom/google/glass/music/MediaButtonDispatcher;->rccIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_0

    .line 43
    sget-object v1, Lcom/google/glass/music/MediaButtonDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "sendMediaButtonClick(): No client is currently registered"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    return v0

    .line 47
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 48
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/music/MediaButtonDispatcher;->rccIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/google/glass/music/MediaButtonDispatcher;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 59
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    :try_start_1
    iget-object v2, p0, Lcom/google/glass/music/MediaButtonDispatcher;->rccIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/google/glass/music/MediaButtonDispatcher;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 67
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    sget-object v2, Lcom/google/glass/music/MediaButtonDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error sending intent for media button down"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :catch_1
    move-exception v1

    .line 64
    sget-object v2, Lcom/google/glass/music/MediaButtonDispatcher;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error sending intent for media button up: "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v2, v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRccIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/music/MediaButtonDispatcher;->rccIntent:Landroid/app/PendingIntent;

    .line 34
    return-void
.end method
