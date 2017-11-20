.class public Lcom/google/android/speech/HotwordModelInfo;
.super Ljava/lang/Object;
.source "HotwordModelInfo.java"


# static fields
.field public static final DEFAULT_HOTWORD_PROMPT:Ljava/lang/String; = "Ok Google"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NO_HOTWORD:Lcom/google/android/speech/HotwordModelInfo;

.field public static final UNKNOWN:Lcom/google/android/speech/HotwordModelInfo;


# instance fields
.field private final mPrompt:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/speech/HotwordModelInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/speech/HotwordModelInfo;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/speech/HotwordModelInfo;->UNKNOWN:Lcom/google/android/speech/HotwordModelInfo;

    .line 19
    new-instance v0, Lcom/google/android/speech/HotwordModelInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/speech/HotwordModelInfo;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/speech/HotwordModelInfo;->NO_HOTWORD:Lcom/google/android/speech/HotwordModelInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "ready"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    .line 36
    iput-boolean p2, p0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 61
    instance-of v2, p1, Lcom/google/android/speech/HotwordModelInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/google/android/speech/HotwordModelInfo;

    .line 63
    .local v0, "other":Lcom/google/android/speech/HotwordModelInfo;
    iget-boolean v2, p0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    iget-boolean v3, v0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 65
    .end local v0    # "other":Lcom/google/android/speech/HotwordModelInfo;
    :cond_0
    return v1
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ok Google"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasPrompt()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x7b

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isNoHotword()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/speech/HotwordModelInfo;->NO_HOTWORD:Lcom/google/android/speech/HotwordModelInfo;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordModelInfo[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/HotwordModelInfo;->mPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/speech/HotwordModelInfo;->mReady:Z

    if-eqz v0, :cond_0

    const-string v0, "\""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "\" / NOT READY"

    goto :goto_0
.end method
