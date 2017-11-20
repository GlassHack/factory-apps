.class Lcom/google/glass/voice/RemoteVoiceMenuDialog$3;
.super Ljava/lang/Object;
.source "RemoteVoiceMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/RemoteVoiceMenuDialog;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/glass/voice/RemoteVoiceMenuDialog$3;->this$0:Lcom/google/glass/voice/RemoteVoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/RemoteVoiceMenuDialog;->access$300(Lcom/google/glass/voice/RemoteVoiceMenuDialog;)V

    .line 98
    return-void
.end method
