.class public Lcom/google/glass/voice/network/OpenEndedInputEvent;
.super Ljava/lang/Object;
.source "OpenEndedInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/voice/network/OpenEndedInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CONFIDENCE:Ljava/lang/String; = "confidence"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_FINAL_TEXT:Ljava/lang/String; = "finalText"

.field public static final EXTRA_LOW_CONF_TEXT:Ljava/lang/String; = "lowConfText"

.field public static final EXTRA_PENDING_TEXT:Ljava/lang/String; = "pendingText"

.field public static final EXTRA_POSTFIX_TEXT:Ljava/lang/String; = "postfixText"

.field public static final EXTRA_PREFIX_TEXT:Ljava/lang/String; = "prefixText"

.field public static final EXTRA_PROTO_BYTES:Ljava/lang/String; = "protoBytes"

.field public static final EXTRA_RESULT_DOC:Ljava/lang/String; = "resultDoc"

.field public static final EXTRA_STABLE_TEXT:Ljava/lang/String; = "stableText"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_EXTRA_EVENTS_KEY:Ljava/lang/String; = "events"

.field private static final NO_TYPE_FLAG_VALUE:I = -0x1


# instance fields
.field private extras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$1;

    invoke-direct {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/glass/voice/network/OpenEndedInputEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;
    .param p2, "x1"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static forFinalResult(Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 2
    .param p0, "textFinal"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "finalText"

    .line 131
    invoke-virtual {v0, v1, p0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public static forRecognitionResult(Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "confidence"    # F

    .prologue
    .line 114
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public static forRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 8
    .param p0, "textPrefix"    # Ljava/lang/String;
    .param p1, "lowestConfText"    # Ljava/lang/String;
    .param p2, "textPostfix"    # Ljava/lang/String;
    .param p3, "confidence"    # F

    .prologue
    .line 121
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNITION_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "text"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "prefixText"

    .line 123
    invoke-virtual {v0, v1, p0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "lowConfText"

    .line 124
    invoke-virtual {v0, v1, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "postfixText"

    .line 125
    invoke-virtual {v0, v1, p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "confidence"

    .line 126
    invoke-virtual {v0, v1, p3}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putFloatExtra(Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public static forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 2
    .param p0, "eventType"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 103
    new-instance v0, Lcom/google/glass/voice/network/OpenEndedInputEvent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->setType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public static forUpdatedResults(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 2
    .param p0, "stableText"    # Ljava/lang/String;
    .param p1, "pendingText"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZED_TEXT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "stableText"

    .line 108
    invoke-virtual {v0, v1, p0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    const-string v1, "pendingText"

    .line 109
    invoke-virtual {v0, v1, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method private setType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 3
    .param p1, "eventType"    # Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloatExtra(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 140
    iget-object v1, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "ordinal":I
    if-ne v0, v3, :cond_0

    .line 142
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No type defined! Illegal OpenEndedInputEvent."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 145
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->values()[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public putByteArrayExtra(Ljava/lang/String;[B)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 172
    return-object p0
.end method

.method public putFloatExtra(Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 163
    return-object p0
.end method

.method public putParcelableExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    return-object p0
.end method

.method public putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/voice/network/OpenEndedInputEvent;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 196
    return-void
.end method
