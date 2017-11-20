.class final Lcom/google/glass/voice/menu/RichEventsReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# instance fields
.field private final richEvents:Ljava/util/ArrayList;

.field private final trigger:Lcom/google/android/glass/app/VoiceTrigger;


# direct methods
.method constructor <init>(Lcom/google/android/glass/app/VoiceTrigger;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->richEvents:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    .line 23
    return-void
.end method


# virtual methods
.method final activateWithSearchResults(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v1, "events"

    iget-object v2, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->richEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->getLoggingExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 47
    iget-object v1, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->trigger:Lcom/google/android/glass/app/VoiceTrigger;

    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/glass/app/VoiceTrigger;->activate(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 48
    return-void
.end method

.method public final onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->getType()Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    move-result-object v0

    .line 30
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->LISTENING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->richEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->richEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_3
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->FINAL_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/glass/voice/menu/RichEventsReceiver;->richEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/menu/RichEventsReceiver;->activateWithSearchResults(Lcom/google/glass/voice/OpenEndedInputController;)V

    goto :goto_0
.end method
