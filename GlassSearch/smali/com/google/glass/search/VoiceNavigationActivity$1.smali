.class Lcom/google/glass/search/VoiceNavigationActivity$1;
.super Ljava/lang/Object;
.source "VoiceNavigationActivity.java"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/search/VoiceNavigationActivity;->createController()Lcom/google/glass/voice/VoiceInputActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/VoiceNavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/search/VoiceNavigationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/search/VoiceNavigationActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/search/VoiceNavigationActivity$1;->this$0:Lcom/google/glass/search/VoiceNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenEndedInputEvent(Lcom/google/glass/voice/OpenEndedInputController;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 1
    .param p1, "controller"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "event"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/glass/search/VoiceNavigationActivity$1;->this$0:Lcom/google/glass/search/VoiceNavigationActivity;

    invoke-static {v0, p2}, Lcom/google/glass/search/VoiceNavigationActivity;->access$000(Lcom/google/glass/search/VoiceNavigationActivity;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 81
    return-void
.end method
