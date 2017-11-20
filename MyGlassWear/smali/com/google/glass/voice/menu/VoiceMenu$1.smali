.class Lcom/google/glass/voice/menu/VoiceMenu$1;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

.field final synthetic val$postAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iput-object p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->val$menuItem:Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu$1;->val$postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method
