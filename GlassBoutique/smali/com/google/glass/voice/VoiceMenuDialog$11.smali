.class Lcom/google/glass/voice/VoiceMenuDialog$11;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;->dismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$11;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$11;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->dismiss()V

    .line 686
    return-void
.end method
