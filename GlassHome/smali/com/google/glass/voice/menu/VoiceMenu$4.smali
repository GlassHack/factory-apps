.class Lcom/google/glass/voice/menu/VoiceMenu$4;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$4;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$4;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$4;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$1200(Lcom/google/glass/voice/menu/VoiceMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$4;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
