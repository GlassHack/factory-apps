.class Lcom/google/glass/camera/RecordVideoActivity$4;
.super Ljava/lang/Object;
.source "RecordVideoActivity.java"

# interfaces
.implements Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/RecordVideoActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/RecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/RecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/RecordVideoActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/google/glass/camera/RecordVideoActivity$4;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceMenuItemSelected(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 1
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/glass/camera/RecordVideoActivity$4;->this$0:Lcom/google/glass/camera/RecordVideoActivity;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordVideoActivity;->extendVideo()V

    .line 334
    return-void
.end method
