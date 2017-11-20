.class Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CompanionInputEntryManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/CompanionInputEntryManager;)V
    .locals 3

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    .line 207
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.companion.OPEN_ENDED_INPUT_RESPONSE"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/CompanionInputEntryManager;Lcom/google/glass/voice/CompanionInputEntryManager$1;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;-><init>(Lcom/google/glass/voice/CompanionInputEntryManager;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$200(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$200(Lcom/google/glass/voice/CompanionInputEntryManager;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "OpenEndedInputResponse received"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/google/glass/voice/CompanionInputEntryManager$OpenEndedInputResponseReceiver;->this$0:Lcom/google/glass/voice/CompanionInputEntryManager;

    invoke-static {v0, p2}, Lcom/google/glass/voice/CompanionInputEntryManager;->access$300(Lcom/google/glass/voice/CompanionInputEntryManager;Landroid/content/Intent;)V

    .line 219
    return-void
.end method
