.class Lcom/google/glass/voice/menu/VoiceMenuItem$1;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenuItem$1;->this$0:Lcom/google/glass/voice/menu/VoiceMenuItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->access$000(Lcom/google/glass/voice/menu/VoiceMenuItem;Z)V

    .line 60
    return-void
.end method
