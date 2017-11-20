.class Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;->onVoiceMenuItemSelected(Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;

.field final synthetic val$listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

.field final synthetic val$remoteMenuItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->this$1:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;

    iput-object p2, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->val$listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    iput-object p3, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->val$remoteMenuItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->val$listener:Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    iget-object v2, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->this$1:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;

    iget-object v2, v2, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1;->this$0:Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;

    .line 56
    invoke-static {v2}, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;->access$200(Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/glass/voice/menu/RemoteVoiceMenuBuilder$1$1;->val$remoteMenuItem:Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;

    invoke-virtual {v2}, Lcom/google/glass/voice/service/menu/RemoteVoiceMenuItem;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->setResults(Landroid/os/Bundle;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;->onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    .line 57
    return-void
.end method
