.class synthetic Lcom/google/glass/voice/actions/SearchResponseController$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->values()[Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNITION_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/glass/voice/actions/SearchResponseController$1;->$SwitchMap$com$google$glass$voice$network$OpenEndedInputEvent$EventType:[I

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->CORRECTION_STARTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
