.class Lcom/google/glass/babel/AudioMessageHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/google/glass/babel/AudioMessageHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/babel/AudioMessageHelper;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/babel/AudioMessageHelper$2;->this$0:Lcom/google/glass/babel/AudioMessageHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 189
    invoke-static {}, Lcom/google/glass/babel/AudioMessageHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "MediaPlayer prepared, starting audio playback."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 191
    return-void
.end method
