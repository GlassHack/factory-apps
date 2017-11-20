.class Lcom/google/glass/babel/AudioMessageHelper$5;
.super Ljava/lang/Object;
.source "AudioMessageHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/babel/AudioMessageHelper;->streamAudio(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/babel/AudioMessageHelper;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$5;->this$0:Lcom/google/glass/babel/AudioMessageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 210
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Audio playback completed, releasing MediaPlayer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 212
    return-void
.end method
