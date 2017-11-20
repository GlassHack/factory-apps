.class Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;
.super Ljava/lang/Object;
.source "VoiceCommandGuesser.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/wearable/app/VoiceCommandGuesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActionKey"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->action:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->packageName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 68
    instance-of v2, p1, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;

    .line 74
    .local v0, "actionKey":Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;
    iget-object v2, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->action:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->action:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->packageName:Ljava/lang/String;

    .line 75
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->action:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/wearable/app/VoiceCommandGuesser$ActionKey;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
