.class public abstract Lcom/google/glass/voice/LocaleChangedReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Lcom/google/glass/logging/FormattingLogger;)V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 18
    const-string v0, "localeChangedReceiver"

    invoke-static {p1, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/LocaleChangedReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 19
    return-void
.end method


# virtual methods
.method protected final getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/voice/LocaleChangedReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public abstract onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end method
