.class Lcom/google/glass/voice/service/menu/VoiceMenuService$4;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService;->asVoiceMenuItems([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;",
        "Lcom/google/glass/voice/menu/VoiceMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/service/menu/VoiceMenuService;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$4;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 1
    .param p1, "remoteItem"    # Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$4;->this$0:Lcom/google/glass/voice/service/menu/VoiceMenuService;

    invoke-static {v0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService;->access$900(Lcom/google/glass/voice/service/menu/VoiceMenuService;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    check-cast p1, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/service/menu/VoiceMenuService$4;->apply(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v0

    return-object v0
.end method
