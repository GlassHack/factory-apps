.class public Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/embedded/Greco3EngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resources"
.end annotation


# instance fields
.field final configFile:Ljava/lang/String;

.field final grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field final locale:Ljava/lang/String;

.field final mode:Lcom/google/android/speech/embedded/Greco3Mode;

.field final paths:[Ljava/lang/String;

.field final resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;


# direct methods
.method constructor <init>(Lcom/google/android/speech/embedded/Greco3ResourceManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;[Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 0
    .param p1, "resources"    # Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .param p2, "configFile"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p5, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p6, "paths"    # [Ljava/lang/String;
    .param p7, "languagePack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    .line 427
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->configFile:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    .line 429
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    .line 430
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    .line 431
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->paths:[Ljava/lang/String;

    .line 432
    iput-object p7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 433
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 437
    instance-of v2, p1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    if-nez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 441
    check-cast v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 442
    .local v0, "other":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    sget-object v3, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    iget-object v3, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isEquivalentTo(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;)Z
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p3, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->mode:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->grammarType:Lcom/google/android/speech/embedded/Greco3Grammar;

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
