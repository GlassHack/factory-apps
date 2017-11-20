.class public Lcom/google/glass/net/upload/SessionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GENERATION_KEY_PREFIX:Ljava/lang/String; = "generation"

.field private static final KEY_SEPERATOR:Ljava/lang/String; = "|"

.field static final LATEST_GENERATION:I = 0x1

.field private static final TRACKING_PREFS_FILENAME:Ljava/lang/String; = "resumable_upload_tracking_prefs"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final currentGeneration:I

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/glass/net/upload/SessionTracker;-><init>(Landroid/content/Context;I)V

    .line 51
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Lcom/google/glass/net/upload/SessionTracker;->currentGeneration:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method private getGenerationForFile(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 104
    const-string v0, "generation|"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_1
    return v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Ran into a non-integer generation -- removing and returning 0 [filePath=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->removeDataForFile(Ljava/lang/String;)Z

    move v0, v1

    goto :goto_1
.end method

.method private getSessionForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    sget-object v1, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No URI was previously stored [filePath=%s]."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Ran into a non-string session -- removing and returning null [filePath=%s]."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->removeDataForFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private removeDataForFile(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 65
    const-string v0, "generation|"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDataForFile(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 3

    .prologue
    .line 74
    const-string v0, "generation|"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/net/upload/SessionTracker;->currentGeneration:I

    .line 78
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearSessionUri(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 185
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->removeDataForFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSessionUri(Ljava/lang/String;)Ljava/net/URI;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 130
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->getGenerationForFile(Ljava/lang/String;)I

    move-result v1

    .line 132
    iget v2, p0, Lcom/google/glass/net/upload/SessionTracker;->currentGeneration:I

    if-ge v1, v2, :cond_0

    .line 133
    sget-object v2, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Session is older than current generation -- removing [filePath=%s, sessionGeneration=%d, currentGeneration=%d]."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    iget v1, p0, Lcom/google/glass/net/upload/SessionTracker;->currentGeneration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    .line 133
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->removeDataForFile(Ljava/lang/String;)Z

    .line 155
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->getSessionForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-nez v2, :cond_1

    .line 144
    sget-object v1, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No URI was previously stored [filePath=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    sget-object v1, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "URI stored in tracking prefs wasn\'t valid -- removing and returning null [filePath=%s, sessionUri=%s]."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, p1}, Lcom/google/glass/net/upload/SessionTracker;->removeDataForFile(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 61
    const-string v0, "resumable_upload_tracking_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public setSessionUri(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 169
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/glass/net/upload/SessionTracker;->setDataForFile(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v0

    return v0
.end method
