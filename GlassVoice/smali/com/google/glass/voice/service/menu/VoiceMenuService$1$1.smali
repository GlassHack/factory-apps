.class Lcom/google/glass/voice/service/menu/VoiceMenuService$1$1;
.super Ljava/lang/Object;
.source "VoiceMenuService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->openVoiceMenu([Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;Landroid/os/Bundle;Lcom/google/glass/voice/service/menu/IRemoteVoiceMenuListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/service/menu/VoiceMenuService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$1;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/service/menu/VoiceMenuService$1$1;->this$1:Lcom/google/glass/voice/service/menu/VoiceMenuService$1;

    invoke-virtual {v0}, Lcom/google/glass/voice/service/menu/VoiceMenuService$1;->closeVoiceMenu()V

    .line 75
    return-void
.end method
